# Terraform Provider GitHub - AI Agent Instructions

## Architecture Overview

This is a Terraform provider for GitHub resources built with both `terraform-plugin-sdk/v2` and `terraform-plugin-framework`. The provider uses `terraform-plugin-mux` to combine both implementations, allowing incremental migration from SDKv2 to Framework.

**Key Components:**
- `main.go`: Mux server setup combining SDKv2 and Framework providers (protocol version 5)
- `github/provider.go`: SDKv2 provider definition with ~85 resources and ~85 data sources
- `github/framework_provider.go`: Framework provider (currently empty, ready for migrations)
- `github/config.go`: Client configuration supporting anonymous, individual, and organization authentication modes
- `github/apps.go`: GitHub App authentication via JWT tokens
- `github/transport.go`: Custom HTTP transport layers for rate limiting, retry logic, and ETag caching
- `github/util*.go`: Shared utilities including v4 GraphQL helpers (`util_v4.go`) and permission helpers

The provider interacts with GitHub via both REST API (v3) and GraphQL API (v4) clients.

## Development Workflow

### Building and Testing

```bash
# Build the provider
make build

# Run unit tests (fast, no GitHub API calls)
make test

# Run acceptance tests (requires GitHub API access)
make testacc
# Or run specific tests:
TF_ACC=1 go test -v ./... -run ^TestAccGithubIssueLabel
```

### Local Development Setup

1. **Required Environment Variables:**
   - `GITHUB_TOKEN`: Personal access token
   - `GITHUB_ORGANIZATION`: For org-level resources (or `GITHUB_OWNER` for user resources)
   - `GITHUB_TEST_COLLABORATOR`: Test user account
   - `GITHUB_TEST_USER`: Another test user
   - `GITHUB_TEMPLATE_REPOSITORY`: Must be named `terraform-template-module` in your test org
   - `GITHUB_TEMPLATE_REPOSITORY_RELEASE_ID`: Release ID from template repo

2. **Testing with Local Provider Build:**
   ```bash
   export TF_CLI_CONFIG_FILE=examples/dev.tfrc
   go build -gcflags="all=-N -l" -o ~/go/bin/
   ```
   The `examples/dev.tfrc` configures Terraform to use your local build via `dev_overrides`.

### Test Modes

Tests use `skipUnlessMode(t, mode)` to target different authentication scenarios:
- `anonymous`: No token (read-only public data)
- `individual`: User account (`GITHUB_OWNER`)
- `organization`: Organization account (`GITHUB_ORGANIZATION`)
- `enterprise`: Enterprise-level resources

Example test structure (see `github/resource_github_issue_label_test.go`):
```go
testCase := func(t *testing.T, mode string) {
    resource.Test(t, resource.TestCase{
        PreCheck:  func() { skipUnlessMode(t, mode) },
        Providers: testAccProviders,
        Steps: []resource.TestStep{...},
    })
}
t.Run("with an individual account", func(t *testing.T) {
    testCase(t, individual)
})
```

## Code Patterns

### Resource Structure

Resources follow standard terraform-plugin-sdk patterns:
```go
func resourceGithubRepository() *schema.Resource {
    return &schema.Resource{
        Create: resourceGithubRepositoryCreate,
        Read:   resourceGithubRepositoryRead,
        Update: resourceGithubRepositoryUpdate,
        Delete: resourceGithubRepositoryDelete,
        Importer: &schema.ResourceImporter{...},
        SchemaVersion: 1,
        MigrateState: resourceGithubRepositoryMigrateState,
        Schema: map[string]*schema.Schema{...},
    }
}
```

### API Client Access

Extract clients from meta:
```go
func resourceGithubRepositoryRead(d *schema.ResourceData, meta interface{}) error {
    client := meta.(*Owner).v3client  // REST API
    v4client := meta.(*Owner).v4client  // GraphQL API
    ctx := context.Background()
    // Use client...
}
```

### Organization-Only Resources

Many resources require organization context:
```go
if err := checkOrganization(meta); err != nil {
    return err
}
```

### GraphQL (v4) Helpers

Use utilities from `util_v4.go`:
- `githubv4StringSliceEmpty()`: Convert `[]string` to `[]githubv4.String`
- `githubv4IDSlice()`: Convert string IDs to GraphQL IDs
- `PageInfo`: Struct for pagination handling

### State Migration

Resources with breaking changes need migration functions (see `migrate_github_*.go`):
```go
SchemaVersion: 1,
MigrateState: resourceGithubRepositoryMigrateState,
```

## Project-Specific Conventions

### Naming Patterns
- Resources: `resource_github_<resource_type>.go` with test file `resource_github_<resource_type>_test.go`
- Data sources: `data_source_github_<data_source>.go` with corresponding test file
- Utilities: `util.go` (general), `util_v4.go` (GraphQL), `util_permissions.go`, etc.

### HTTP Transport Layers

The provider wraps HTTP clients with multiple transport layers (applied in `config.go`):
1. **EtagTransport**: Caches ETags to save API quota
2. **RateLimitTransport**: Enforces `write_delay_ms`, `read_delay_ms`, handles abuse rate limits
3. **RetryTransport**: Retries on configurable error codes (default: 500, 502, 503, 504)
4. **PreviewHeaderInjector**: Adds preview API headers (e.g., Stone Crop for GraphQL)

### Testing Fixtures

Store test data in `github/test-fixtures/` (certificates, keys, etc.)

### ID Formats

Many resources use composite IDs:
- `buildTwoPartID(part1, part2)` creates `"part1:part2"`
- `parseTwoPartID(id, "left", "right")` splits them back

## Common Tasks

### Migrating Resources to Framework

When migrating a resource from SDKv2 to Framework:

1. Create `github/resource_github_<name>_framework.go` implementing `resource.Resource` interface
2. Add to `github/framework_provider.go` Resources() method
3. Keep SDKv2 version until Framework migration is complete and tested
4. Update tests to use `ProtoV5ProviderFactories` pattern (see `github/mux_test.go`)
5. Remove SDKv2 version once Framework version is stable

**Important**: Framework provider schema in `framework_provider.go` MUST exactly match SDKv2 provider schema to avoid "PreparedConfig response from multiple servers" errors. Do not use `Default` or `DefaultFunc` in SDKv2 schema - handle defaults in ConfigureContextFunc instead.

### Adding a New Resource

1. Create `github/resource_github_<name>.go` with CRUD functions
2. Create `github/resource_github_<name>_test.go` with acceptance tests using `skipUnlessMode`
3. Register in `provider.go` ResourcesMap
4. Test with `TF_ACC=1 go test -v ./... -run ^TestAccGithub<Name>`

### Adding a New Data Source

Similar to resources but only implement `Read` function. Register in `provider.go` DataSourcesMap.

### Debugging

Add debug logging: `log.Printf("[DEBUG] your message here")`  
Enable with: `TF_LOG=DEBUG TF_ACC=1 go test ...`

For VSCode debugging, see `CONTRIBUTING.md` for launch.json configuration.

## Important Notes

- The provider uses **terraform-plugin-mux** to combine SDKv2 and Framework implementations
- New resources should be written using Framework in `github/framework_provider.go`
- Existing SDKv2 resources remain in `github/provider.go` until migrated
- Mux server uses **protocol version 5** for broad Terraform version compatibility
- Automated testing is limited (see issue #1414) - manual testing is critical
- The provider supports GHES (GitHub Enterprise Server) via `GITHUB_BASE_URL`
- GitHub Paid features require `GITHUB_PAID_FEATURES=true` environment variable
- Provider uses `parallel_requests=false` by default to serialize API calls and avoid rate limits
- Some older tests don't use `skipUnlessMode` - these should be refactored when touched
- When migrating resources, ensure provider schemas stay synchronized between SDKv2 and Framework
