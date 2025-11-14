# GitHub Repository List Resource

This document describes the implementation of list functionality for the `github_repository` resource using the terraform-plugin-framework's list interface alongside the existing SDKv2 resource implementation.

## Overview

The list functionality allows Terraform to efficiently discover and manage multiple instances of the `github_repository` resource. This is particularly useful for:

- Discovering existing repositories in a GitHub account or organization
- Bulk importing repositories into Terraform state
- Using Terraform's `list` block syntax (Terraform 1.12+)

## Implementation Details

### Files

- `github/list_resource_github_repository.go`: Main list resource implementation
- `github/list_resource_github_repository_test.go`: Test file
- `github/framework_provider.go`: Updated to register the list resource
- `github/config.go`: Updated to expose the owner field for list resources

### Architecture

The implementation follows the compatibility pattern described in the SDKv2 list documentation:

1. **SDKv2 Resource**: The existing `github_repository` resource remains implemented in SDKv2
2. **Framework List Resource**: New list functionality is implemented using the framework's `list.ListResource` interface
3. **Provider Mux**: The mux server combines both SDKv2 and Framework providers

### Key Interfaces Implemented

1. `list.ListResource` - Core interface for list operations
   - `Metadata()` - Returns resource type name
   - `ListResourceConfigSchema()` - Returns schema for list configuration (empty for now)
   - `List()` - Performs the actual listing operation

2. `list.ListResourceWithRawV5Schemas` - Provides SDKv2 schema compatibility
   - `RawV5Schemas()` - Converts SDKv2 schemas to protocol V5 format

3. `list.ListResourceWithConfigure` - Provider configuration access
   - `Configure()` - Receives provider configuration and GitHub clients

### List Operation Flow

1. Terraform calls the `List()` method with a `ListRequest`
2. The method checks if an owner is configured:
   - If owner is set: Lists repositories for that user/organization
   - If no owner: Lists repositories for the authenticated user
3. For each repository returned by the GitHub API:
   - Creates a new `ListResult`
   - Sets identity attributes (name, owner)
   - Sets resource state attributes (all repository fields)
   - Converts to protocol types using SDKv2 helper methods
   - Pushes result to the stream
4. Pagination is handled automatically using GitHub API's pagination

### Identity and Resource State

The list implementation leverages SDKv2's helper methods for state conversion:

- `rd.Identity()` - Gets identity data container
- `identity.Set(key, value)` - Sets identity attributes
- `rd.Set(key, value)` - Sets resource state attributes
- `rd.TfTypeIdentityState()` - Converts identity to tftypes.Value
- `rd.TfTypeResourceState()` - Converts resource state to tftypes.Value

This ensures compatibility with the existing SDKv2 resource schema.

## Usage

### Provider Configuration

The list resource uses the same provider configuration as the regular resource:

```hcl
provider "github" {
  token = var.github_token
  owner = var.github_owner  # Optional: user or org name
}
```

### Listing Repositories

With Terraform 1.12+, you can use the `list` block (when supported):

```hcl
# Future syntax when Terraform adds native list block support
list {
  github_repository {}
}
```

### Current Usage

Currently, the list functionality works behind the scenes when Terraform needs to discover resources. The primary use case is with data sources or import operations.

## Testing

### Unit Tests

Basic acceptance tests are provided in `list_resource_github_repository_test.go`. These tests:

- Verify the list operation completes without error
- Support both individual and organization modes
- Use existing test infrastructure (`skipUnlessMode`)

### Manual Testing

To manually test the list functionality:

```bash
# Set required environment variables
export GITHUB_TOKEN="your-token"
export GITHUB_OWNER="your-username-or-org"

# Build the provider
make build

# Run acceptance tests
TF_ACC=1 go test -v ./github -run TestAccGithubRepositoryList
```

## Configuration Changes

### Provider Configuration (framework_provider.go)

The framework provider's `Configure()` method was updated to:

1. Parse provider configuration (token, owner, base_url, etc.)
2. Create a `Config` object matching the SDKv2 provider
3. Initialize the GitHub client using `config.Meta()`
4. Pass the configured client to list resources via `resp.ResourceData`

This ensures the framework and SDKv2 providers share the same configuration and client instances.

### Owner Struct (config.go)

Added an exported `owner` field to the `Owner` struct to allow list resources to access the configured owner name. This field is set during `ConfigureOwner()` and matches the internal `name` field.

## Limitations and Future Work

1. **No List Block Config**: Currently, the `ListResourceConfigSchema()` returns an empty schema. Future enhancements could add filtering or pagination options.

2. **Pagination**: The implementation fetches all pages automatically. For accounts with many repositories, this could be slow. Future enhancements could add:
   - Configurable page size
   - Parallel fetching
   - Result streaming/cancellation

3. **Filtering**: The list operation returns all accessible repositories. Future enhancements could add:
   - Filter by visibility (public/private)
   - Filter by archived status
   - Filter by topics
   - Filter by language

4. **Error Handling**: Currently, any API error stops the listing. Future enhancements could add:
   - Partial result returns
   - Retry logic for transient errors
   - Better error context

## References

- [SDKv2 List Documentation](https://developer.hashicorp.com/terraform/plugin/sdkv2/resources/list)
- [Framework List Resources](https://developer.hashicorp.com/terraform/plugin/framework/resources/list-resources)
- [Provider Mux](https://developer.hashicorp.com/terraform/plugin/mux/combining-protocol-version-5-providers)
- [GitHub API - List Repositories](https://docs.github.com/en/rest/repos/repos#list-repositories-for-the-authenticated-user)
