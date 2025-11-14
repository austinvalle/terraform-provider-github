# Import block example for testing identity-based import
import {
  to = github_repository.imported_test
  id = "terraform-provider-github" # Traditional import by name
}

# You can also test with identity block (Terraform 1.12+):
# import {
#   to = github_repository.imported_with_identity
#   identity = {
#     name = "terraform-provider-github"
#     # owner can be specified to override provider's owner
#     # owner = "hashicorp"
#   }
# }

# Resource configuration for imported repository
resource "github_repository" "imported_test" {
  name        = "terraform-provider-github"
  description = "Imported test repository"
}
