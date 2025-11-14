# Basic list query for github_repository resources
# This will list all repositories accessible to the authenticated user/org

list "github_repository" "all" {
  provider = github
}
