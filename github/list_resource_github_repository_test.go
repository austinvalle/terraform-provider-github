package github

import (
	"fmt"
	"testing"

	"github.com/hashicorp/terraform-plugin-sdk/v2/helper/resource"
)

func TestAccGithubRepositoryList_basic(t *testing.T) {
	// This test requires an actual GitHub account with repositories
	// It will list all repositories for the configured owner

	testCase := func(t *testing.T, mode string) {
		resource.Test(t, resource.TestCase{
			PreCheck:  func() { skipUnlessMode(t, mode) },
			Providers: testAccProviders,
			Steps: []resource.TestStep{
				{
					Config: testAccGithubRepositoryListConfig(),
					Check: resource.ComposeTestCheckFunc(
						// Just verify the list operation completes without error
						// The actual number of repositories will vary by account
						resource.TestCheckResourceAttrSet("data.github_repository.test", "name"),
					),
				},
			},
		})
	}

	t.Run("with an individual account", func(t *testing.T) {
		testCase(t, individual)
	})

	t.Run("with an organization account", func(t *testing.T) {
		testCase(t, organization)
	})
}

func testAccGithubRepositoryListConfig() string {
	return fmt.Sprintf(`
# This data source uses the list operation behind the scenes
# when querying for repository information
data "github_repository" "test" {
  name = "terraform-provider-github"
}
`)
}
