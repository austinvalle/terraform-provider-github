package github

// NOTE: Acceptance tests for list functionality should be performed manually
// using the test configuration files in the test-list/ directory.
//
// List resources are tested using Terraform's "terraform query" command with
// .tfquery.hcl files, which is different from standard resource testing.
//
// To test the list functionality:
//   1. Build the provider: make build
//   2. Navigate to test-list/: cd test-list
//   3. Initialize: terraform init
//   4. Run queries: terraform query -file=basic.tfquery.hcl
//
// See test-list/README.md for complete testing insterraform query -file=limited.tfquery.hcltructions.
