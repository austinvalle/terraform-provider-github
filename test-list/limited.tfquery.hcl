# List query with a limit on the number of results
# This will return at most 10 repositories

list "github_repository" "limited" {
  provider = github
  limit    = 10
}
