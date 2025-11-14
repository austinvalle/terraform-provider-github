# Provider configuration for list queries
# The .tfquery.hcl files in this directory will use this provider configuration

terraform {
  required_version = ">= 1.14"

  required_providers {
    github = {
      source = "integrations/github"
    }
  }
}

provider "github" {
  # Uses GITHUB_TOKEN and GITHUB_OWNER environment variables
  # Or you can set them explicitly:
  # token = var.github_token
  # owner = var.github_owner
}
