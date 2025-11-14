# Testing Resource Identity for github_repository

This directory contains test configurations for verifying the resource identity implementation.

## Setup

1. Set your GitHub credentials:
```bash
export GITHUB_TOKEN="your-github-token"
export GITHUB_OWNER="your-github-username-or-org"
```

2. Initialize Terraform with the local provider build:
```bash
terraform init
```

## Test Cases

### 1. Create Repository (main.tf)

Test basic repository creation and verify identity is set:

```bash
terraform plan
terraform apply
```

### 2. Traditional Import (CLI)

Test backward compatibility with traditional import:

```bash
# Create a test repository first if needed
terraform apply

# Import using traditional CLI method
terraform import github_repository.imported_test terraform-provider-github
```

### 3. Import Block with ID (Terraform 1.5+)

Test import block using string ID:

```bash
# Add to your configuration:
import {
  to = github_repository.imported_test
  id = "terraform-provider-github"
}

terraform plan -generate-config-out=generated.tf
```

### 4. Import Block with Identity (Terraform 1.12+)

Test new identity-based import (requires Terraform 1.12+):

```bash
# Add to your configuration:
import {
  to = github_repository.imported_with_identity
  identity = {
    name = "terraform-provider-github"
    owner = "integrations"  # Optional - overrides provider owner
  }
}

terraform plan -generate-config-out=generated.tf
```

## Expected Behavior

- Repository creation should work normally
- Identity data (name, owner) should be populated automatically
- Traditional imports should continue to work
- Import blocks with identity should successfully import repositories
- Owner can be overridden in identity for cross-owner imports

## Cleanup

```bash
terraform destroy
```
