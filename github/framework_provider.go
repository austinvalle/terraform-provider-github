package github

import (
	"context"
	"os"
	"time"

	"github.com/hashicorp/terraform-plugin-framework/datasource"
	"github.com/hashicorp/terraform-plugin-framework/list"
	"github.com/hashicorp/terraform-plugin-framework/provider"
	"github.com/hashicorp/terraform-plugin-framework/provider/schema"
	"github.com/hashicorp/terraform-plugin-framework/resource"
	"github.com/hashicorp/terraform-plugin-framework/types"
)

// Ensure the implementation satisfies the provider.Provider interface.
var _ provider.Provider = &FrameworkProvider{}

// Ensure the implementation satisfies the provider.ProviderWithListResources interface.
var _ provider.ProviderWithListResources = &FrameworkProvider{}

// FrameworkProvider is a minimal terraform-plugin-framework provider implementation
// that will be used alongside the existing SDKv2 provider during migration.
type FrameworkProvider struct {
	version string
}

// FrameworkProviderModel describes the provider data model.
type FrameworkProviderModel struct {
	Token            types.String `tfsdk:"token"`
	Owner            types.String `tfsdk:"owner"`
	Organization     types.String `tfsdk:"organization"`
	BaseURL          types.String `tfsdk:"base_url"`
	Insecure         types.Bool   `tfsdk:"insecure"`
	WriteDelayMs     types.Int64  `tfsdk:"write_delay_ms"`
	ReadDelayMs      types.Int64  `tfsdk:"read_delay_ms"`
	RetryDelayMs     types.Int64  `tfsdk:"retry_delay_ms"`
	ParallelRequests types.Bool   `tfsdk:"parallel_requests"`
	MaxRetries       types.Int64  `tfsdk:"max_retries"`
	RetryableErrors  types.List   `tfsdk:"retryable_errors"`
	AppAuth          types.List   `tfsdk:"app_auth"`
	MaxPerPage       types.Int64  `tfsdk:"max_per_page"`
}

// NewFrameworkProvider returns a new instance of the Framework provider.
func NewFrameworkProvider(version string) func() provider.Provider {
	return func() provider.Provider {
		return &FrameworkProvider{
			version: version,
		}
	}
}

// Metadata returns the provider type name.
func (p *FrameworkProvider) Metadata(ctx context.Context, req provider.MetadataRequest, resp *provider.MetadataResponse) {
	resp.TypeName = "github"
	resp.Version = p.version
}

// Schema defines the provider-level schema for configuration data.
// This schema MUST match the SDKv2 provider schema exactly for mux to work.
// NOTE: app_auth is intentionally omitted as it requires removing Default/DefaultFunc
// from SDKv2 schema to work with mux. This will be addressed when migrating resources.
func (p *FrameworkProvider) Schema(ctx context.Context, req provider.SchemaRequest, resp *provider.SchemaResponse) {
	resp.Schema = schema.Schema{
		Attributes: map[string]schema.Attribute{
			"token": schema.StringAttribute{
				Optional:    true,
				Description: descriptions["token"],
			},
			"owner": schema.StringAttribute{
				Optional:    true,
				Description: descriptions["owner"],
			},
			"organization": schema.StringAttribute{
				Optional:           true,
				DeprecationMessage: "Use owner (or GITHUB_OWNER) instead of organization (or GITHUB_ORGANIZATION)",
				Description:        descriptions["organization"],
			},
			"base_url": schema.StringAttribute{
				Optional:    true,
				Description: descriptions["base_url"],
			},
			"insecure": schema.BoolAttribute{
				Optional:    true,
				Description: descriptions["insecure"],
			},
			"write_delay_ms": schema.Int64Attribute{
				Optional:    true,
				Description: descriptions["write_delay_ms"],
			},
			"read_delay_ms": schema.Int64Attribute{
				Optional:    true,
				Description: descriptions["read_delay_ms"],
			},
			"retry_delay_ms": schema.Int64Attribute{
				Optional:    true,
				Description: descriptions["retry_delay_ms"],
			},
			"parallel_requests": schema.BoolAttribute{
				Optional:    true,
				Description: descriptions["parallel_requests"],
			},
			"max_retries": schema.Int64Attribute{
				Optional:    true,
				Description: descriptions["max_retries"],
			},
			"retryable_errors": schema.ListAttribute{
				ElementType: types.Int64Type,
				Optional:    true,
				Description: descriptions["retryable_errors"],
			},
			"max_per_page": schema.Int64Attribute{
				Optional:    true,
				Description: descriptions["max_per_page"],
			},
		},
		Blocks: map[string]schema.Block{
			"app_auth": schema.ListNestedBlock{
				Description: descriptions["app_auth"],
				NestedObject: schema.NestedBlockObject{
					Attributes: map[string]schema.Attribute{
						"id": schema.StringAttribute{
							Required:    true,
							Description: descriptions["app_auth.id"],
						},
						"installation_id": schema.StringAttribute{
							Required:    true,
							Description: descriptions["app_auth.installation_id"],
						},
						"pem_file": schema.StringAttribute{
							Required:    true,
							Sensitive:   true,
							Description: descriptions["app_auth.pem_file"],
						},
					},
				},
			},
		},
	}
}

// Configure prepares the provider for data sources and resources.
func (p *FrameworkProvider) Configure(ctx context.Context, req provider.ConfigureRequest, resp *provider.ConfigureResponse) {
	var data FrameworkProviderModel

	resp.Diagnostics.Append(req.Config.Get(ctx, &data)...)

	if resp.Diagnostics.HasError() {
		return
	}

	// The configuration must be handled identically to the SDKv2 provider to avoid
	// the "PreparedConfig response from multiple servers" error.
	// We delegate actual client configuration to the SDKv2 provider and then
	// reuse the same client instance here through the mux layer.

	// For list resources, we need to configure the GitHub client.
	// We'll create the same configuration that the SDKv2 provider uses.

	// Apply environment variable defaults if not set in config
	token := data.Token.ValueString()
	if data.Token.IsNull() {
		if envToken := os.Getenv("GITHUB_TOKEN"); envToken != "" {
			token = envToken
		}
	}

	owner := data.Owner.ValueString()
	if data.Owner.IsNull() {
		if envOwner := os.Getenv("GITHUB_OWNER"); envOwner != "" {
			owner = envOwner
		}
	}

	if data.Organization.IsNull() {
		if org := os.Getenv("GITHUB_ORGANIZATION"); org != "" {
			data.Organization = types.StringValue(org)
		}
	}

	baseURL := data.BaseURL.ValueString()
	if data.BaseURL.IsNull() {
		if envBaseURL := os.Getenv("GITHUB_BASE_URL"); envBaseURL != "" {
			baseURL = envBaseURL
		} else {
			baseURL = "https://api.github.com/"
		}
	}

	// Handle backwards compatibility for organization attribute
	if !data.Organization.IsNull() && data.Organization.ValueString() != "" {
		owner = data.Organization.ValueString()
	}

	// Set default values matching SDKv2 provider
	writeDelay := 1000
	if !data.WriteDelayMs.IsNull() {
		writeDelay = int(data.WriteDelayMs.ValueInt64())
	}

	readDelay := 0
	if !data.ReadDelayMs.IsNull() {
		readDelay = int(data.ReadDelayMs.ValueInt64())
	}

	retryDelay := 1000
	if !data.RetryDelayMs.IsNull() {
		retryDelay = int(data.RetryDelayMs.ValueInt64())
	}

	maxRetries := 3
	if !data.MaxRetries.IsNull() {
		maxRetries = int(data.MaxRetries.ValueInt64())
	}

	retryableErrors := getDefaultRetriableErrors()
	if !data.RetryableErrors.IsNull() {
		// Parse retryable errors from config if provided
		var errList []types.Int64
		diags := data.RetryableErrors.ElementsAs(ctx, &errList, false)
		if diags.HasError() {
			resp.Diagnostics.Append(diags...)
			return
		}
		retryableErrors = make(map[int]bool)
		for _, e := range errList {
			retryableErrors[int(e.ValueInt64())] = true
		}
	}

	parallelRequests := false
	if !data.ParallelRequests.IsNull() {
		parallelRequests = data.ParallelRequests.ValueBool()
	}

	insecure := false
	if !data.Insecure.IsNull() {
		insecure = data.Insecure.ValueBool()
	}

	// Create the config and initialize the client
	config := Config{
		Token:            token,
		BaseURL:          baseURL,
		Insecure:         insecure,
		Owner:            owner,
		WriteDelay:       time.Duration(writeDelay) * time.Millisecond,
		ReadDelay:        time.Duration(readDelay) * time.Millisecond,
		RetryDelay:       time.Duration(retryDelay) * time.Millisecond,
		RetryableErrors:  retryableErrors,
		MaxRetries:       maxRetries,
		ParallelRequests: parallelRequests,
	}

	meta, err := config.Meta()
	if err != nil {
		resp.Diagnostics.AddError(
			"Unable to create GitHub client",
			"An error occurred while creating the GitHub client: "+err.Error(),
		)
		return
	}

	// Make the configured client available to list resources
	resp.ResourceData = meta
}

// DataSources defines the data sources implemented in the provider.
// Initially empty - data sources will be migrated here as needed.
func (p *FrameworkProvider) DataSources(ctx context.Context) []func() datasource.DataSource {
	return []func() datasource.DataSource{}
}

// Resources defines the resources implemented in the provider.
// Initially empty - resources will be migrated here as needed.
func (p *FrameworkProvider) Resources(ctx context.Context) []func() resource.Resource {
	return []func() resource.Resource{}
}

// ListResources defines the list resources implemented in the provider.
func (p *FrameworkProvider) ListResources(ctx context.Context) []func() list.ListResource {
	return []func() list.ListResource{
		NewRepositoryListResource,
	}
}
