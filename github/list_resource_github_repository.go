package github

import (
	"context"
	"fmt"
	"log"

	"github.com/google/go-github/v67/github"
	"github.com/hashicorp/terraform-plugin-framework/list"
	"github.com/hashicorp/terraform-plugin-framework/resource"
	"github.com/hashicorp/terraform-plugin-sdk/v2/terraform"
)

// Ensure the implementation satisfies the list.ListResource interface.
var _ list.ListResource = &RepositoryListResource{}

// Ensure the implementation satisfies the list.ListResourceWithRawV5Schemas interface.
var _ list.ListResourceWithRawV5Schemas = &RepositoryListResource{}

// RepositoryListResource defines the list resource implementation for github_repository.
type RepositoryListResource struct {
	providerConfig *Owner
}

// NewRepositoryListResource is a constructor for the RepositoryListResource.
func NewRepositoryListResource() list.ListResource {
	return &RepositoryListResource{}
}

// Metadata returns the resource type name.
func (r *RepositoryListResource) Metadata(ctx context.Context, req resource.MetadataRequest, resp *resource.MetadataResponse) {
	resp.TypeName = "github_repository"
}

// ListResourceConfigSchema returns the schema for the list resource configuration.
// For now, this returns an empty schema as we don't need additional configuration.
func (r *RepositoryListResource) ListResourceConfigSchema(ctx context.Context, req list.ListResourceSchemaRequest, resp *list.ListResourceSchemaResponse) {
	// No additional configuration needed for listing repositories
}

// RawV5Schemas returns the raw protocol V5 schemas for the resource and identity.
func (r *RepositoryListResource) RawV5Schemas(ctx context.Context, req list.RawV5SchemaRequest, resp *list.RawV5SchemaResponse) {
	// Get the SDKv2 resource definition
	repoResource := resourceGithubRepository()

	// Convert the SDKv2 schemas to protocol V5 format
	resp.ProtoV5Schema = repoResource.ProtoSchema(ctx)()
	resp.ProtoV5IdentitySchema = repoResource.ProtoIdentitySchema(ctx)()
}

// Configure stores the provider configuration for later use.
func (r *RepositoryListResource) Configure(ctx context.Context, req resource.ConfigureRequest, resp *resource.ConfigureResponse) {
	if req.ProviderData == nil {
		return
	}

	providerConfig, ok := req.ProviderData.(*Owner)
	if !ok {
		resp.Diagnostics.AddError(
			"Unexpected Provider Data Type",
			fmt.Sprintf("Expected *Owner, got: %T. Please report this issue to the provider developers.", req.ProviderData),
		)
		return
	}

	r.providerConfig = providerConfig
}

// List retrieves all repositories accessible to the authenticated user or organization.
func (r *RepositoryListResource) List(ctx context.Context, req list.ListRequest, stream *list.ListResultsStream) {
	if r.providerConfig == nil {
		result := req.NewListResult(ctx)
		result.Diagnostics.AddError(
			"Provider not configured",
			"The provider configuration is not available. This is a bug in the provider.",
		)
		// Push the error result to the stream
		stream.Results = func(push func(list.ListResult) bool) {
			push(result)
		}
		return
	}

	client := r.providerConfig.v3client
	owner := r.providerConfig.owner

	// Define the function that will push results into the stream
	stream.Results = func(push func(list.ListResult) bool) {
		opt := &github.RepositoryListByAuthenticatedUserOptions{
			ListOptions: github.ListOptions{PerPage: 100},
		}

		// If owner is set, list repositories for that owner
		if owner != "" {
			log.Printf("[DEBUG] Listing repositories for owner: %s", owner)
			r.listRepositoriesForOwner(ctx, client, owner, push, req)
		} else {
			// List repositories for the authenticated user
			log.Printf("[DEBUG] Listing repositories for authenticated user")
			r.listRepositoriesForAuthenticatedUser(ctx, client, opt, push, req)
		}
	}
}

// listRepositoriesForOwner lists all repositories for a specific owner (user or organization).
func (r *RepositoryListResource) listRepositoriesForOwner(
	ctx context.Context,
	client *github.Client,
	owner string,
	push func(list.ListResult) bool,
	req list.ListRequest,
) {
	opt := &github.RepositoryListByUserOptions{
		ListOptions: github.ListOptions{PerPage: 100},
	}

	for {
		repos, resp, err := client.Repositories.ListByUser(ctx, owner, opt)
		if err != nil {
			result := req.NewListResult(ctx)
			result.Diagnostics.AddError(
				"Error listing repositories",
				fmt.Sprintf("Could not list repositories for owner %s: %s", owner, err.Error()),
			)
			push(result)
			return
		}

		for _, repo := range repos {
			if !r.processRepository(ctx, repo, push, req) {
				return
			}
		}

		if resp.NextPage == 0 {
			break
		}
		opt.Page = resp.NextPage
	}
}

// listRepositoriesForAuthenticatedUser lists all repositories for the authenticated user.
func (r *RepositoryListResource) listRepositoriesForAuthenticatedUser(
	ctx context.Context,
	client *github.Client,
	opt *github.RepositoryListByAuthenticatedUserOptions,
	push func(list.ListResult) bool,
	req list.ListRequest,
) {
	for {
		repos, resp, err := client.Repositories.ListByAuthenticatedUser(ctx, opt)
		if err != nil {
			result := req.NewListResult(ctx)
			result.Diagnostics.AddError(
				"Error listing repositories",
				fmt.Sprintf("Could not list repositories: %s", err.Error()),
			)
			push(result)
			return
		}

		for _, repo := range repos {
			if !r.processRepository(ctx, repo, push, req) {
				return
			}
		}

		if resp.NextPage == 0 {
			break
		}
		opt.Page = resp.NextPage
	}
}

// processRepository processes a single repository and pushes it to the stream.
// Returns false if the stream should stop processing.
func (r *RepositoryListResource) processRepository(
	ctx context.Context,
	repo *github.Repository,
	push func(list.ListResult) bool,
	req list.ListRequest,
) bool {
	// Initialize a new result object for this repository
	result := req.NewListResult(ctx)

	// Set the user-friendly display name
	if repo.FullName != nil {
		result.DisplayName = *repo.FullName
	} else if repo.Name != nil {
		result.DisplayName = *repo.Name
	}

	// Create an instance of the SDKv2 resource
	repoResource := resourceGithubRepository()

	// Create a new ResourceData object to hold the state of this repository
	rd := repoResource.Data(&terraform.InstanceState{})

	// Set the ID of the resource
	if repo.Name != nil {
		rd.SetId(*repo.Name)
	} else {
		result.Diagnostics.AddError(
			"Repository missing name",
			"A repository was returned without a name field",
		)
		return push(result)
	}

	// Get the identity data and set identity attributes
	identity, err := rd.Identity()
	if err != nil {
		result.Diagnostics.AddError(
			"Error retrieving identity data",
			fmt.Sprintf("An error was encountered when retrieving the identity data: %s", err.Error()),
		)
		return push(result)
	}

	// Set identity attributes
	if repo.Name != nil {
		if err := identity.Set("name", *repo.Name); err != nil {
			result.Diagnostics.AddError(
				"Error setting identity name",
				fmt.Sprintf("Could not set identity name: %s", err.Error()),
			)
			return push(result)
		}
	}

	if repo.Owner != nil && repo.Owner.Login != nil {
		if err := identity.Set("owner", *repo.Owner.Login); err != nil {
			result.Diagnostics.AddError(
				"Error setting identity owner",
				fmt.Sprintf("Could not set identity owner: %s", err.Error()),
			)
			return push(result)
		}
	}

	// Set resource state attributes using the same logic as resourceGithubRepositoryRead
	if repo.Name != nil {
		rd.Set("name", *repo.Name)
	}
	if repo.Description != nil {
		rd.Set("description", *repo.Description)
	}
	if repo.Homepage != nil {
		rd.Set("homepage_url", *repo.Homepage)
	}
	if repo.Private != nil {
		rd.Set("private", *repo.Private)
	}
	if repo.Visibility != nil {
		rd.Set("visibility", *repo.Visibility)
	}
	if repo.HasIssues != nil {
		rd.Set("has_issues", *repo.HasIssues)
	}
	if repo.HasProjects != nil {
		rd.Set("has_projects", *repo.HasProjects)
	}
	if repo.HasWiki != nil {
		rd.Set("has_wiki", *repo.HasWiki)
	}
	if repo.AllowMergeCommit != nil {
		rd.Set("allow_merge_commit", *repo.AllowMergeCommit)
	}
	if repo.AllowSquashMerge != nil {
		rd.Set("allow_squash_merge", *repo.AllowSquashMerge)
	}
	if repo.AllowRebaseMerge != nil {
		rd.Set("allow_rebase_merge", *repo.AllowRebaseMerge)
	}
	if repo.AllowAutoMerge != nil {
		rd.Set("allow_auto_merge", *repo.AllowAutoMerge)
	}
	if repo.DeleteBranchOnMerge != nil {
		rd.Set("delete_branch_on_merge", *repo.DeleteBranchOnMerge)
	}
	if repo.Archived != nil {
		rd.Set("archived", *repo.Archived)
	}
	if repo.Topics != nil {
		rd.Set("topics", flattenStringList(repo.Topics))
	}
	if repo.DefaultBranch != nil {
		rd.Set("default_branch", *repo.DefaultBranch)
	}
	if repo.HTMLURL != nil {
		rd.Set("html_url", *repo.HTMLURL)
	}
	if repo.SSHURL != nil {
		rd.Set("ssh_clone_url", *repo.SSHURL)
	}
	if repo.SVNURL != nil {
		rd.Set("svn_url", *repo.SVNURL)
	}
	if repo.GitURL != nil {
		rd.Set("git_clone_url", *repo.GitURL)
	}
	if repo.CloneURL != nil {
		rd.Set("http_clone_url", *repo.CloneURL)
	}
	if repo.MirrorURL != nil {
		rd.Set("mirror_url", *repo.MirrorURL)
	}
	if repo.FullName != nil {
		rd.Set("full_name", *repo.FullName)
	}
	if repo.NodeID != nil {
		rd.Set("node_id", *repo.NodeID)
	}
	if repo.HasDownloads != nil {
		rd.Set("has_downloads", *repo.HasDownloads)
	}
	if repo.HasDiscussions != nil {
		rd.Set("has_discussions", *repo.HasDiscussions)
	}
	if repo.IsTemplate != nil {
		rd.Set("is_template", *repo.IsTemplate)
	}
	if repo.AllowUpdateBranch != nil {
		rd.Set("allow_update_branch", *repo.AllowUpdateBranch)
	}
	if repo.MergeCommitTitle != nil {
		rd.Set("merge_commit_title", *repo.MergeCommitTitle)
	}
	if repo.MergeCommitMessage != nil {
		rd.Set("merge_commit_message", *repo.MergeCommitMessage)
	}
	if repo.SquashMergeCommitTitle != nil {
		rd.Set("squash_merge_commit_title", *repo.SquashMergeCommitTitle)
	}
	if repo.SquashMergeCommitMessage != nil {
		rd.Set("squash_merge_commit_message", *repo.SquashMergeCommitMessage)
	}

	// Convert the identity data to tftypes.Value
	tfTypeIdentity, err := rd.TfTypeIdentityState()
	if err != nil {
		result.Diagnostics.AddError(
			"Error converting identity data",
			fmt.Sprintf("An error was encountered when converting the identity data: %s", err.Error()),
		)
		return push(result)
	}

	diags := result.Identity.Set(ctx, *tfTypeIdentity)
	if diags.HasError() {
		result.Diagnostics.Append(diags...)
		return push(result)
	}

	// Convert the resource state to tftypes.Value
	tfTypeResource, err := rd.TfTypeResourceState()
	if err != nil {
		result.Diagnostics.AddError(
			"Error converting resource state",
			fmt.Sprintf("An error was encountered when converting the resource state: %s", err.Error()),
		)
		return push(result)
	}

	diags = result.Resource.Set(ctx, *tfTypeResource)
	if diags.HasError() {
		result.Diagnostics.Append(diags...)
		return push(result)
	}

	// Send the result to the stream
	return push(result)
}
