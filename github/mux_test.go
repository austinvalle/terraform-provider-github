package github

import (
	"context"
	"testing"

	"github.com/hashicorp/terraform-plugin-framework/providerserver"
	"github.com/hashicorp/terraform-plugin-go/tfprotov5"
	"github.com/hashicorp/terraform-plugin-mux/tf5muxserver"
	"github.com/hashicorp/terraform-plugin-sdk/v2/helper/resource"
)

// TestMuxServer verifies that the mux server setup works correctly.
// This test uses a simple data source to verify the provider can be initialized.
func TestMuxServer(t *testing.T) {
	resource.Test(t, resource.TestCase{
		ProtoV5ProviderFactories: map[string]func() (tfprotov5.ProviderServer, error){
			"github": func() (tfprotov5.ProviderServer, error) {
				ctx := context.Background()
				providers := []func() tfprotov5.ProviderServer{
					providerserver.NewProtocol5(NewFrameworkProvider("test")()), // Framework provider
					Provider().GRPCProvider, // SDKv2 provider
				}

				muxServer, err := tf5muxserver.NewMuxServer(ctx, providers...)
				if err != nil {
					return nil, err
				}

				return muxServer.ProviderServer(), nil
			},
		},
		Steps: []resource.TestStep{
			{
				Config: `
					data "github_user" "test" {
						username = "github"
					}
				`,
				Check: resource.ComposeTestCheckFunc(
					resource.TestCheckResourceAttrSet("data.github_user.test", "login"),
				),
			},
		},
	})
}
