# Testing GitHub Repository List Functionality

This directory contains test configuration files for manually testing the `github_repository` list resource implementation using Terraform's `list` block and `terraform query` command.

## Prerequisites

1. **Terraform 1.14+** (currently in beta/RC)
   ```bash
   terraform version
   # Should show v1.14.x or higher
   ```

2. **Environment Variables**
   ```bash
   export GITHUB_TOKEN="your-personal-access-token"
   export GITHUB_OWNER="your-username-or-org"  # Optional
   ```

3. **Build the Provider Locally**
   ```bash
   cd /Users/austin.valle/code/forks/terraform-provider-github
   make build
   
   # Copy to local bin (if using dev_overrides)
   go build -o ~/go/bin/terraform-provider-github
   ```

4. **Configure Dev Override** (Optional)
   
   Create or update `~/.terraformrc`:
   ```hcl
   provider_installation {
     dev_overrides {
       "integrations/github" = "/Users/austin.valle/go/bin"
     }
     direct {}
   }
   ```

## Test Files

### `basic.tfquery.hcl`
Lists all repositories accessible to the authenticated user or configured organization.

```bash
terraform query -file=basic.tfquery.hcl
```

Expected output: List of repository identities (name and owner).

### `with_resource.tfquery.hcl`
Lists repositories with full resource details by setting `include_resource = true`.

```bash
terraform query -file=with_resource.tfquery.hcl
```

Expected output: List of repositories with complete state information (description, visibility, URL, etc.).

### `limited.tfquery.hcl`
Lists only the first 10 repositories using the `limit` parameter.

```bash
terraform query -file=limited.tfquery.hcl
```

Expected output: Maximum of 10 repository results.

## Running Tests

### Initialize Terraform

```bash
cd test-list
terraform init
```

### Run Queries

Run individual query files:

```bash
# Basic list (identity only)
terraform query -file=basic.tfquery.hcl

# With full resource details
terraform query -file=with_resource.tfquery.hcl

# Limited results
terraform query -file=limited.tfquery.hcl
```

### View Results as JSON

```bash
terraform query -file=basic.tfquery.hcl -json | jq .
```

### Run All Queries

```bash
# Run all .tfquery.hcl files in the directory
terraform query
```

## Expected Behavior

### Success Indicators

1. **No Errors**: The command completes without diagnostic errors
2. **Repository List**: Returns a list of repositories from your GitHub account
3. **Identity Data**: Each result includes `name` and `owner` in the identity
4. **Resource Data** (when `include_resource = true`): Each result includes full repository attributes

### Sample Output Structure

```
Identity:
  name: "terraform-provider-github"
  owner: "austinvalle"

Resource: (when include_resource = true)
  name: "terraform-provider-github"
  description: "Terraform GitHub provider"
  visibility: "public"
  html_url: "https://github.com/austinvalle/terraform-provider-github"
  # ... other attributes
```

## Troubleshooting

### "Provider not configured" Error

Ensure environment variables are set:
```bash
echo $GITHUB_TOKEN
echo $GITHUB_OWNER
```

### "List resource not found" Error

Verify the list resource is registered in the framework provider:
- Check `github/framework_provider.go` has `ListResources()` method
- Verify `NewRepositoryListResource` is in the returned slice

### API Rate Limiting

If you hit GitHub API rate limits:
```bash
# Check your rate limit status
curl -H "Authorization: token $GITHUB_TOKEN" https://api.github.com/rate_limit
```

Add delays in the provider configuration:
```hcl
provider "github" {
  token         = var.github_token
  owner         = var.github_owner
  read_delay_ms = 100  # Add 100ms delay between reads
}
```

### No Results Returned

1. Verify you have repositories in your account
2. Check token permissions (should have `repo` scope)
3. If using `GITHUB_OWNER`, ensure it's spelled correctly
4. Try without `GITHUB_OWNER` to list all accessible repos

## Debugging

Enable debug logging:

```bash
TF_LOG=DEBUG terraform query -file=basic.tfquery.hcl 2>&1 | tee debug.log
```

Look for:
- Provider initialization messages
- List method invocation
- GitHub API calls
- Repository processing logs

## Additional Resources

- [Terraform List Block Documentation](https://developer.hashicorp.com/terraform/language/v1.14.x/block/tfquery/list)
- [Terraform Query Command](https://developer.hashicorp.com/terraform/cli/commands/query)
- [GitHub API - List Repositories](https://docs.github.com/en/rest/repos/repos#list-repositories-for-the-authenticated-user)
