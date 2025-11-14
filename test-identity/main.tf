terraform {
  required_providers {
    github = {
      source = "integrations/github"
    }
  }
}

provider "github" {
  # Provider will use GITHUB_TOKEN and GITHUB_OWNER from environment
}

# Test 1: Create a repository with identity
resource "github_repository" "test_identity" {
  name        = "tf-test-identity-repo"
  description = "Test repository for resource identity feature"
  auto_init   = true
  visibility  = "public"
}

# Output to verify identity is being set
output "repo_name" {
  value = github_repository.test_identity.name
}

output "repo_full_name" {
  value = github_repository.test_identity.full_name
}
