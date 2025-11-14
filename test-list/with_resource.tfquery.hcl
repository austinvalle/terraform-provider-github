# List query with full resource information
# Setting include_resource to true returns complete repository state

list "github_repository" "with_details" {
  provider         = github
  include_resource = true
}
