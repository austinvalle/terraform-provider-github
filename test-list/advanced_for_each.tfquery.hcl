# Advanced example: Multiple list queries using for_each
# This demonstrates querying repositories with different configurations

locals {
  query_configs = {
    "small" = {
      limit            = 5
      include_resource = false
    }
    "detailed" = {
      limit            = 20
      include_resource = true
    }
  }
}

list "github_repository" "multi" {
  for_each = local.query_configs
  
  provider         = github
  limit            = each.value.limit
  include_resource = each.value.include_resource
}

# Note: This will create two separate queries:
# - list.github_repository.multi["small"] with 5 results (identity only)
# - list.github_repository.multi["detailed"] with 20 results (full details)
