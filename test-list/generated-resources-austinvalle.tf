# __generated__ by Terraform
# Please review these resources and move them into your main configuration files.

# __generated__ by Terraform
resource "github_repository" "all_0" {
  provider               = github
  allow_auto_merge       = null
  allow_merge_commit     = null
  allow_rebase_merge     = null
  allow_squash_merge     = null
  allow_update_branch    = null
  archive_on_destroy     = null
  archived               = false
  auto_init              = null
  delete_branch_on_merge = null
  description            = "https://adventofcode.com/"

  gitignore_template                      = null
  has_discussions                         = false
  has_downloads                           = true
  has_issues                              = true
  has_projects                            = true
  has_wiki                                = true
  homepage_url                            = null
  ignore_vulnerability_alerts_during_read = null
  is_template                             = false
  license_template                        = null
  merge_commit_message                    = null
  merge_commit_title                      = null
  name                                    = "aoc-2020"

  squash_merge_commit_message = null
  squash_merge_commit_title   = null
  topics                      = []
  visibility                  = "public"
  web_commit_signoff_required = null
}

import {
  to       = github_repository.all_0
  provider = github
  identity = {
    name  = "aoc-2020"
    owner = "austinvalle"
  }
}

resource "github_repository" "all_1" {
  provider               = github
  allow_auto_merge       = null
  allow_merge_commit     = null
  allow_rebase_merge     = null
  allow_squash_merge     = null
  allow_update_branch    = null
  archive_on_destroy     = null
  archived               = false
  auto_init              = null
  delete_branch_on_merge = null
  description            = null

  gitignore_template                      = null
  has_discussions                         = false
  has_downloads                           = true
  has_issues                              = true
  has_projects                            = true
  has_wiki                                = true
  homepage_url                            = null
  ignore_vulnerability_alerts_during_read = null
  is_template                             = false
  license_template                        = null
  merge_commit_message                    = null
  merge_commit_title                      = null
  name                                    = "austinvalle"

  squash_merge_commit_message = null
  squash_merge_commit_title   = null
  topics                      = []
  visibility                  = "public"
  web_commit_signoff_required = null
}

import {
  to       = github_repository.all_1
  provider = github
  identity = {
    name  = "austinvalle"
    owner = "austinvalle"
  }
}

resource "github_repository" "all_2" {
  provider               = github
  allow_auto_merge       = null
  allow_merge_commit     = null
  allow_rebase_merge     = null
  allow_squash_merge     = null
  allow_update_branch    = null
  archive_on_destroy     = null
  archived               = false
  auto_init              = null
  delete_branch_on_merge = null
  description            = "home site"

  gitignore_template                      = null
  has_discussions                         = false
  has_downloads                           = true
  has_issues                              = true
  has_projects                            = true
  has_wiki                                = true
  homepage_url                            = "https://austinvalle.com"
  ignore_vulnerability_alerts_during_read = null
  is_template                             = false
  license_template                        = null
  merge_commit_message                    = null
  merge_commit_title                      = null
  name                                    = "austinvalle.com"

  squash_merge_commit_message = null
  squash_merge_commit_title   = null
  topics                      = ["portfolio-website", "react"]
  visibility                  = "public"
  web_commit_signoff_required = null
}

import {
  to       = github_repository.all_2
  provider = github
  identity = {
    name  = "austinvalle.com"
    owner = "austinvalle"
  }
}

resource "github_repository" "all_3" {
  provider               = github
  allow_auto_merge       = null
  allow_merge_commit     = null
  allow_rebase_merge     = null
  allow_squash_merge     = null
  allow_update_branch    = null
  archive_on_destroy     = null
  archived               = false
  auto_init              = null
  delete_branch_on_merge = null
  description            = "Prevent cloud misconfigurations during build-time for Terraform, Cloudformation, Kubernetes, Serverless framework and other infrastructure-as-code-languages with Checkov by Bridgecrew."

  gitignore_template                      = null
  has_discussions                         = false
  has_downloads                           = true
  has_issues                              = false
  has_projects                            = true
  has_wiki                                = true
  homepage_url                            = "https://www.checkov.io/"
  ignore_vulnerability_alerts_during_read = null
  is_template                             = false
  license_template                        = null
  merge_commit_message                    = null
  merge_commit_title                      = null
  name                                    = "checkov"

  squash_merge_commit_message = null
  squash_merge_commit_title   = null
  topics                      = []
  visibility                  = "public"
  web_commit_signoff_required = null
}

import {
  to       = github_repository.all_3
  provider = github
  identity = {
    name  = "checkov"
    owner = "austinvalle"
  }
}

resource "github_repository" "all_4" {
  provider               = github
  allow_auto_merge       = null
  allow_merge_commit     = null
  allow_rebase_merge     = null
  allow_squash_merge     = null
  allow_update_branch    = null
  archive_on_destroy     = null
  archived               = false
  auto_init              = null
  delete_branch_on_merge = null
  description            = "Discord Guild Probe - utility for scanning a discord guild and messages for admin use"

  gitignore_template                      = null
  has_discussions                         = false
  has_downloads                           = true
  has_issues                              = true
  has_projects                            = true
  has_wiki                                = true
  homepage_url                            = null
  ignore_vulnerability_alerts_during_read = null
  is_template                             = false
  license_template                        = null
  merge_commit_message                    = null
  merge_commit_title                      = null
  name                                    = "dgp"

  squash_merge_commit_message = null
  squash_merge_commit_title   = null
  topics                      = []
  visibility                  = "public"
  web_commit_signoff_required = null
}

import {
  to       = github_repository.all_4
  provider = github
  identity = {
    name  = "dgp"
    owner = "austinvalle"
  }
}

resource "github_repository" "all_5" {
  provider               = github
  allow_auto_merge       = null
  allow_merge_commit     = null
  allow_rebase_merge     = null
  allow_squash_merge     = null
  allow_update_branch    = null
  archive_on_destroy     = null
  archived               = false
  auto_init              = null
  delete_branch_on_merge = null
  description            = null

  gitignore_template                      = null
  has_discussions                         = false
  has_downloads                           = true
  has_issues                              = true
  has_projects                            = true
  has_wiki                                = true
  homepage_url                            = null
  ignore_vulnerability_alerts_during_read = null
  is_template                             = false
  license_template                        = null
  merge_commit_message                    = null
  merge_commit_title                      = null
  name                                    = "fantasy-calculator"

  squash_merge_commit_message = null
  squash_merge_commit_title   = null
  topics                      = []
  visibility                  = "public"
  web_commit_signoff_required = null
}

import {
  to       = github_repository.all_5
  provider = github
  identity = {
    name  = "fantasy-calculator"
    owner = "austinvalle"
  }
}

resource "github_repository" "all_6" {
  provider               = github
  allow_auto_merge       = null
  allow_merge_commit     = null
  allow_rebase_merge     = null
  allow_squash_merge     = null
  allow_update_branch    = null
  archive_on_destroy     = null
  archived               = false
  auto_init              = null
  delete_branch_on_merge = null
  description            = "More research around different implementations of web components"

  gitignore_template                      = null
  has_discussions                         = false
  has_downloads                           = true
  has_issues                              = true
  has_projects                            = true
  has_wiki                                = true
  homepage_url                            = null
  ignore_vulnerability_alerts_during_read = null
  is_template                             = false
  license_template                        = null
  merge_commit_message                    = null
  merge_commit_title                      = null
  name                                    = "gh-web-components"

  squash_merge_commit_message = null
  squash_merge_commit_title   = null
  topics                      = []
  visibility                  = "public"
  web_commit_signoff_required = null
}

import {
  to       = github_repository.all_6
  provider = github
  identity = {
    name  = "gh-web-components"
    owner = "austinvalle"
  }
}

resource "github_repository" "all_7" {
  provider               = github
  allow_auto_merge       = null
  allow_merge_commit     = null
  allow_rebase_merge     = null
  allow_squash_merge     = null
  allow_update_branch    = null
  archive_on_destroy     = null
  archived               = false
  auto_init              = null
  delete_branch_on_merge = null
  description            = "messing around with reflection/linting/analysis/etc"

  gitignore_template                      = null
  has_discussions                         = false
  has_downloads                           = true
  has_issues                              = true
  has_projects                            = true
  has_wiki                                = true
  homepage_url                            = null
  ignore_vulnerability_alerts_during_read = null
  is_template                             = false
  license_template                        = null
  merge_commit_message                    = null
  merge_commit_title                      = null
  name                                    = "go-internals-sandbox"

  squash_merge_commit_message = null
  squash_merge_commit_title   = null
  topics                      = []
  visibility                  = "public"
  web_commit_signoff_required = null
}

import {
  to       = github_repository.all_7
  provider = github
  identity = {
    name  = "go-internals-sandbox"
    owner = "austinvalle"
  }
}

resource "github_repository" "all_8" {
  provider               = github
  allow_auto_merge       = null
  allow_merge_commit     = null
  allow_rebase_merge     = null
  allow_squash_merge     = null
  allow_update_branch    = null
  archive_on_destroy     = null
  archived               = false
  auto_init              = null
  delete_branch_on_merge = null
  description            = "CLI for downloading youtube videos/audio and renaming metadata"

  gitignore_template                      = null
  has_discussions                         = false
  has_downloads                           = true
  has_issues                              = true
  has_projects                            = true
  has_wiki                                = true
  homepage_url                            = null
  ignore_vulnerability_alerts_during_read = null
  is_template                             = false
  license_template                        = null
  merge_commit_message                    = null
  merge_commit_title                      = null
  name                                    = "gotube"

  squash_merge_commit_message = null
  squash_merge_commit_title   = null
  topics                      = ["cli", "command-line", "golang", "metadata-editor", "plex", "youtube-downloader"]
  visibility                  = "public"
  web_commit_signoff_required = null
}

import {
  to       = github_repository.all_8
  provider = github
  identity = {
    name  = "gotube"
    owner = "austinvalle"
  }
}

resource "github_repository" "all_9" {
  provider               = github
  allow_auto_merge       = null
  allow_merge_commit     = null
  allow_rebase_merge     = null
  allow_squash_merge     = null
  allow_update_branch    = null
  archive_on_destroy     = null
  archived               = false
  auto_init              = null
  delete_branch_on_merge = null
  description            = "utility bot for google hangouts"

  gitignore_template                      = null
  has_discussions                         = false
  has_downloads                           = true
  has_issues                              = true
  has_projects                            = true
  has_wiki                                = true
  homepage_url                            = null
  ignore_vulnerability_alerts_during_read = null
  is_template                             = false
  license_template                        = null
  merge_commit_message                    = null
  merge_commit_title                      = null
  name                                    = "hammy-bot"

  squash_merge_commit_message = null
  squash_merge_commit_title   = null
  topics                      = ["bot", "hangouts", "hangoutsbot", "javascript"]
  visibility                  = "public"
  web_commit_signoff_required = null
}

import {
  to       = github_repository.all_9
  provider = github
  identity = {
    name  = "hammy-bot"
    owner = "austinvalle"
  }
}

resource "github_repository" "all_10" {
  provider               = github
  allow_auto_merge       = null
  allow_merge_commit     = null
  allow_rebase_merge     = null
  allow_squash_merge     = null
  allow_update_branch    = null
  archive_on_destroy     = null
  archived               = false
  auto_init              = null
  delete_branch_on_merge = null
  description            = null

  gitignore_template                      = null
  has_discussions                         = false
  has_downloads                           = true
  has_issues                              = true
  has_projects                            = true
  has_wiki                                = true
  homepage_url                            = "https://lab.github.com/github/hello-github-actions!"
  ignore_vulnerability_alerts_during_read = null
  is_template                             = false
  license_template                        = null
  merge_commit_message                    = null
  merge_commit_title                      = null
  name                                    = "hello-github-actions"

  squash_merge_commit_message = null
  squash_merge_commit_title   = null
  topics                      = []
  visibility                  = "public"
  web_commit_signoff_required = null
}

import {
  to       = github_repository.all_10
  provider = github
  identity = {
    name  = "hello-github-actions"
    owner = "austinvalle"
  }
}

resource "github_repository" "all_11" {
  provider               = github
  allow_auto_merge       = null
  allow_merge_commit     = null
  allow_rebase_merge     = null
  allow_squash_merge     = null
  allow_update_branch    = null
  archive_on_destroy     = null
  archived               = false
  auto_init              = null
  delete_branch_on_merge = null
  description            = "Pretty basic theme for Hugo that covers all of the essentials. All you have to do is start typing!"

  gitignore_template                      = null
  has_discussions                         = false
  has_downloads                           = true
  has_issues                              = false
  has_projects                            = true
  has_wiki                                = true
  homepage_url                            = "https://github.com/rhazdon/hugo-theme-hello-friend-ng/"
  ignore_vulnerability_alerts_during_read = null
  is_template                             = false
  license_template                        = null
  merge_commit_message                    = null
  merge_commit_title                      = null
  name                                    = "hugo-theme-hello-friend-ng"

  squash_merge_commit_message = null
  squash_merge_commit_title   = null
  topics                      = []
  visibility                  = "public"
  web_commit_signoff_required = null
}

import {
  to       = github_repository.all_11
  provider = github
  identity = {
    name  = "hugo-theme-hello-friend-ng"
    owner = "austinvalle"
  }
}

resource "github_repository" "all_12" {
  provider               = github
  allow_auto_merge       = null
  allow_merge_commit     = null
  allow_rebase_merge     = null
  allow_squash_merge     = null
  allow_update_branch    = null
  archive_on_destroy     = null
  archived               = false
  auto_init              = null
  delete_branch_on_merge = null
  description            = "Visual timeline of the Marvel Cinematic Universe"

  gitignore_template                      = null
  has_discussions                         = false
  has_downloads                           = true
  has_issues                              = true
  has_projects                            = true
  has_wiki                                = true
  homepage_url                            = "https://mcu.valle.io/"
  ignore_vulnerability_alerts_during_read = null
  is_template                             = false
  license_template                        = null
  merge_commit_message                    = null
  merge_commit_title                      = null
  name                                    = "mcu-timeline"

  squash_merge_commit_message = null
  squash_merge_commit_title   = null
  topics                      = ["infographic", "marvel", "mcu", "parallax"]
  visibility                  = "public"
  web_commit_signoff_required = null
}

import {
  to       = github_repository.all_12
  provider = github
  identity = {
    name  = "mcu-timeline"
    owner = "austinvalle"
  }
}

resource "github_repository" "all_13" {
  provider               = github
  allow_auto_merge       = null
  allow_merge_commit     = null
  allow_rebase_merge     = null
  allow_squash_merge     = null
  allow_update_branch    = null
  archive_on_destroy     = null
  archived               = false
  auto_init              = null
  delete_branch_on_merge = null
  description            = null

  gitignore_template                      = null
  has_discussions                         = false
  has_downloads                           = true
  has_issues                              = true
  has_projects                            = true
  has_wiki                                = true
  homepage_url                            = null
  ignore_vulnerability_alerts_during_read = null
  is_template                             = false
  license_template                        = null
  merge_commit_message                    = null
  merge_commit_title                      = null
  name                                    = "mlbot"

  squash_merge_commit_message = null
  squash_merge_commit_title   = null
  topics                      = []
  visibility                  = "public"
  web_commit_signoff_required = null
}

import {
  to       = github_repository.all_13
  provider = github
  identity = {
    name  = "mlbot"
    owner = "austinvalle"
  }
}

resource "github_repository" "all_14" {
  provider               = github
  allow_auto_merge       = null
  allow_merge_commit     = null
  allow_rebase_merge     = null
  allow_squash_merge     = null
  allow_update_branch    = null
  archive_on_destroy     = null
  archived               = false
  auto_init              = null
  delete_branch_on_merge = null
  description            = "messing around with micro frontends"

  gitignore_template                      = null
  has_discussions                         = false
  has_downloads                           = true
  has_issues                              = true
  has_projects                            = true
  has_wiki                                = true
  homepage_url                            = null
  ignore_vulnerability_alerts_during_read = null
  is_template                             = false
  license_template                        = null
  merge_commit_message                    = null
  merge_commit_title                      = null
  name                                    = "ng-spa-land"

  squash_merge_commit_message = null
  squash_merge_commit_title   = null
  topics                      = ["angular", "javascript", "micro-frontends"]
  visibility                  = "public"
  web_commit_signoff_required = null
}

import {
  to       = github_repository.all_14
  provider = github
  identity = {
    name  = "ng-spa-land"
    owner = "austinvalle"
  }
}

resource "github_repository" "all_15" {
  provider               = github
  allow_auto_merge       = null
  allow_merge_commit     = null
  allow_rebase_merge     = null
  allow_squash_merge     = null
  allow_update_branch    = null
  archive_on_destroy     = null
  archived               = false
  auto_init              = null
  delete_branch_on_merge = null
  description            = "allow plex users to request movies + tv shows to be added"

  gitignore_template                      = null
  has_discussions                         = false
  has_downloads                           = true
  has_issues                              = true
  has_projects                            = true
  has_wiki                                = true
  homepage_url                            = null
  ignore_vulnerability_alerts_during_read = null
  is_template                             = false
  license_template                        = null
  merge_commit_message                    = null
  merge_commit_title                      = null
  name                                    = "plex-rex"

  squash_merge_commit_message = null
  squash_merge_commit_title   = null
  topics                      = ["golang", "plex", "plexrequests", "react"]
  visibility                  = "public"
  web_commit_signoff_required = null
}

import {
  to       = github_repository.all_15
  provider = github
  identity = {
    name  = "plex-rex"
    owner = "austinvalle"
  }
}

resource "github_repository" "all_16" {
  provider               = github
  allow_auto_merge       = null
  allow_merge_commit     = null
  allow_rebase_merge     = null
  allow_squash_merge     = null
  allow_update_branch    = null
  archive_on_destroy     = null
  archived               = false
  auto_init              = null
  delete_branch_on_merge = null
  description            = null

  gitignore_template                      = null
  has_discussions                         = false
  has_downloads                           = true
  has_issues                              = true
  has_projects                            = true
  has_wiki                                = true
  homepage_url                            = null
  ignore_vulnerability_alerts_during_read = null
  is_template                             = false
  license_template                        = null
  merge_commit_message                    = null
  merge_commit_title                      = null
  name                                    = "projecteval"

  squash_merge_commit_message = null
  squash_merge_commit_title   = null
  topics                      = []
  visibility                  = "public"
  web_commit_signoff_required = null
}

import {
  to       = github_repository.all_16
  provider = github
  identity = {
    name  = "projecteval"
    owner = "austinvalle"
  }
}

resource "github_repository" "all_17" {
  provider               = github
  allow_auto_merge       = null
  allow_merge_commit     = null
  allow_rebase_merge     = null
  allow_squash_merge     = null
  allow_update_branch    = null
  archive_on_destroy     = null
  archived               = false
  auto_init              = null
  delete_branch_on_merge = null
  description            = null

  gitignore_template                      = null
  has_discussions                         = false
  has_downloads                           = true
  has_issues                              = true
  has_projects                            = true
  has_wiki                                = true
  homepage_url                            = null
  ignore_vulnerability_alerts_during_read = null
  is_template                             = false
  license_template                        = null
  merge_commit_message                    = null
  merge_commit_title                      = null
  name                                    = "rest-api-example"

  squash_merge_commit_message = null
  squash_merge_commit_title   = null
  topics                      = []
  visibility                  = "public"
  web_commit_signoff_required = null
}

import {
  to       = github_repository.all_17
  provider = github
  identity = {
    name  = "rest-api-example"
    owner = "austinvalle"
  }
}

resource "github_repository" "all_18" {
  provider               = github
  allow_auto_merge       = null
  allow_merge_commit     = null
  allow_rebase_merge     = null
  allow_squash_merge     = null
  allow_update_branch    = null
  archive_on_destroy     = null
  archived               = false
  auto_init              = null
  delete_branch_on_merge = null
  description            = null

  gitignore_template                      = null
  has_discussions                         = false
  has_downloads                           = true
  has_issues                              = true
  has_projects                            = true
  has_wiki                                = true
  homepage_url                            = null
  ignore_vulnerability_alerts_during_read = null
  is_template                             = false
  license_template                        = null
  merge_commit_message                    = null
  merge_commit_title                      = null
  name                                    = "rtc-connect"

  squash_merge_commit_message = null
  squash_merge_commit_title   = null
  topics                      = []
  visibility                  = "public"
  web_commit_signoff_required = null
}

import {
  to       = github_repository.all_18
  provider = github
  identity = {
    name  = "rtc-connect"
    owner = "austinvalle"
  }
}

resource "github_repository" "all_19" {
  provider               = github
  allow_auto_merge       = null
  allow_merge_commit     = null
  allow_rebase_merge     = null
  allow_squash_merge     = null
  allow_update_branch    = null
  archive_on_destroy     = null
  archived               = false
  auto_init              = null
  delete_branch_on_merge = null
  description            = "plex channel that lets you view sports streams from reddit"

  gitignore_template                      = null
  has_discussions                         = false
  has_downloads                           = true
  has_issues                              = true
  has_projects                            = true
  has_wiki                                = true
  homepage_url                            = null
  ignore_vulnerability_alerts_during_read = null
  is_template                             = false
  license_template                        = null
  merge_commit_message                    = null
  merge_commit_title                      = null
  name                                    = "SnooSports.bundle"

  squash_merge_commit_message = null
  squash_merge_commit_title   = null
  topics                      = ["plex", "plex-media-server", "plugin", "python", "reddit", "streaming-video"]
  visibility                  = "public"
  web_commit_signoff_required = null
}

import {
  to       = github_repository.all_19
  provider = github
  identity = {
    name  = "SnooSports.bundle"
    owner = "austinvalle"
  }
}

resource "github_repository" "all_20" {
  provider               = github
  allow_auto_merge       = null
  allow_merge_commit     = null
  allow_rebase_merge     = null
  allow_squash_merge     = null
  allow_update_branch    = null
  archive_on_destroy     = null
  archived               = false
  auto_init              = null
  delete_branch_on_merge = null
  description            = "practicing TDD with different exercises"

  gitignore_template                      = null
  has_discussions                         = false
  has_downloads                           = true
  has_issues                              = true
  has_projects                            = true
  has_wiki                                = true
  homepage_url                            = null
  ignore_vulnerability_alerts_during_read = null
  is_template                             = false
  license_template                        = null
  merge_commit_message                    = null
  merge_commit_title                      = null
  name                                    = "tdd-katas"

  squash_merge_commit_message = null
  squash_merge_commit_title   = null
  topics                      = []
  visibility                  = "public"
  web_commit_signoff_required = null
}

import {
  to       = github_repository.all_20
  provider = github
  identity = {
    name  = "tdd-katas"
    owner = "austinvalle"
  }
}

resource "github_repository" "all_21" {
  provider               = github
  allow_auto_merge       = null
  allow_merge_commit     = null
  allow_rebase_merge     = null
  allow_squash_merge     = null
  allow_update_branch    = null
  archive_on_destroy     = null
  archived               = false
  auto_init              = null
  delete_branch_on_merge = null
  description            = "Terraform enables you to safely and predictably create, change, and improve infrastructure. It is a source-available tool that codifies APIs into declarative configuration files that can be shared amongst team members, treated as code, edited, reviewed, and versioned."

  gitignore_template                      = null
  has_discussions                         = false
  has_downloads                           = true
  has_issues                              = false
  has_projects                            = true
  has_wiki                                = false
  homepage_url                            = "http://developer.hashicorp.com/terraform"
  ignore_vulnerability_alerts_during_read = null
  is_template                             = false
  license_template                        = null
  merge_commit_message                    = null
  merge_commit_title                      = null
  name                                    = "terraform"

  squash_merge_commit_message = null
  squash_merge_commit_title   = null
  topics                      = []
  visibility                  = "public"
  web_commit_signoff_required = null
}

import {
  to       = github_repository.all_21
  provider = github
  identity = {
    name  = "terraform"
    owner = "austinvalle"
  }
}

resource "github_repository" "all_22" {
  provider               = github
  allow_auto_merge       = null
  allow_merge_commit     = null
  allow_rebase_merge     = null
  allow_squash_merge     = null
  allow_update_branch    = null
  archive_on_destroy     = null
  archived               = false
  auto_init              = null
  delete_branch_on_merge = null
  description            = null

  gitignore_template                      = null
  has_discussions                         = false
  has_downloads                           = true
  has_issues                              = true
  has_projects                            = true
  has_wiki                                = false
  homepage_url                            = "https://registry.terraform.io/providers/austinvalle/bufo/latest/docs"
  ignore_vulnerability_alerts_during_read = null
  is_template                             = false
  license_template                        = null
  merge_commit_message                    = null
  merge_commit_title                      = null
  name                                    = "terraform-provider-bufo"

  squash_merge_commit_message = null
  squash_merge_commit_title   = null
  topics                      = []
  visibility                  = "public"
  web_commit_signoff_required = null
}

import {
  to       = github_repository.all_22
  provider = github
  identity = {
    name  = "terraform-provider-bufo"
    owner = "austinvalle"
  }
}

resource "github_repository" "all_23" {
  provider               = github
  allow_auto_merge       = null
  allow_merge_commit     = null
  allow_rebase_merge     = null
  allow_squash_merge     = null
  allow_update_branch    = null
  archive_on_destroy     = null
  archived               = false
  auto_init              = null
  delete_branch_on_merge = null
  description            = null

  gitignore_template                      = null
  has_discussions                         = false
  has_downloads                           = true
  has_issues                              = true
  has_projects                            = false
  has_wiki                                = false
  homepage_url                            = null
  ignore_vulnerability_alerts_during_read = null
  is_template                             = false
  license_template                        = null
  merge_commit_message                    = null
  merge_commit_title                      = null
  name                                    = "terraform-provider-discord"

  squash_merge_commit_message = null
  squash_merge_commit_title   = null
  topics                      = []
  visibility                  = "public"
  web_commit_signoff_required = null
}

import {
  to       = github_repository.all_23
  provider = github
  identity = {
    name  = "terraform-provider-discord"
    owner = "austinvalle"
  }
}

resource "github_repository" "all_24" {
  provider               = github
  allow_auto_merge       = null
  allow_merge_commit     = null
  allow_rebase_merge     = null
  allow_squash_merge     = null
  allow_update_branch    = null
  archive_on_destroy     = null
  archived               = false
  auto_init              = null
  delete_branch_on_merge = null
  description            = "Terraform GitHub provider"

  gitignore_template                      = null
  has_discussions                         = false
  has_downloads                           = true
  has_issues                              = false
  has_projects                            = true
  has_wiki                                = false
  homepage_url                            = "https://www.terraform.io/docs/providers/github/"
  ignore_vulnerability_alerts_during_read = null
  is_template                             = false
  license_template                        = null
  merge_commit_message                    = null
  merge_commit_title                      = null
  name                                    = "terraform-provider-github"

  squash_merge_commit_message = null
  squash_merge_commit_title   = null
  topics                      = []
  visibility                  = "public"
  web_commit_signoff_required = null
}

import {
  to       = github_repository.all_24
  provider = github
  identity = {
    name  = "terraform-provider-github"
    owner = "austinvalle"
  }
}

resource "github_repository" "all_25" {
  provider               = github
  allow_auto_merge       = null
  allow_merge_commit     = null
  allow_rebase_merge     = null
  allow_squash_merge     = null
  allow_update_branch    = null
  archive_on_destroy     = null
  archived               = false
  auto_init              = null
  delete_branch_on_merge = null
  description            = null

  gitignore_template                      = null
  has_discussions                         = false
  has_downloads                           = true
  has_issues                              = true
  has_projects                            = true
  has_wiki                                = true
  homepage_url                            = null
  ignore_vulnerability_alerts_during_read = null
  is_template                             = false
  license_template                        = null
  merge_commit_message                    = null
  merge_commit_title                      = null
  name                                    = "terraform-provider-sandbox"

  squash_merge_commit_message = null
  squash_merge_commit_title   = null
  topics                      = []
  visibility                  = "public"
  web_commit_signoff_required = null
}

import {
  to       = github_repository.all_25
  provider = github
  identity = {
    name  = "terraform-provider-sandbox"
    owner = "austinvalle"
  }
}

resource "github_repository" "all_26" {
  provider               = github
  allow_auto_merge       = null
  allow_merge_commit     = null
  allow_rebase_merge     = null
  allow_squash_merge     = null
  allow_update_branch    = null
  archive_on_destroy     = null
  archived               = false
  auto_init              = null
  delete_branch_on_merge = null
  description            = "Test repository for resource identity feature"

  gitignore_template                      = null
  has_discussions                         = false
  has_downloads                           = false
  has_issues                              = false
  has_projects                            = false
  has_wiki                                = false
  homepage_url                            = null
  ignore_vulnerability_alerts_during_read = null
  is_template                             = false
  license_template                        = null
  merge_commit_message                    = null
  merge_commit_title                      = null
  name                                    = "tf-test-identity-repo"

  squash_merge_commit_message = null
  squash_merge_commit_title   = null
  topics                      = []
  visibility                  = "public"
  web_commit_signoff_required = null
}

import {
  to       = github_repository.all_26
  provider = github
  identity = {
    name  = "tf-test-identity-repo"
    owner = "austinvalle"
  }
}

resource "github_repository" "all_27" {
  provider               = github
  allow_auto_merge       = null
  allow_merge_commit     = null
  allow_rebase_merge     = null
  allow_squash_merge     = null
  allow_update_branch    = null
  archive_on_destroy     = null
  archived               = true
  auto_init              = null
  delete_branch_on_merge = null
  description            = "Social network project - Dylan, Matt, Jake, & Austin"

  gitignore_template                      = null
  has_discussions                         = false
  has_downloads                           = true
  has_issues                              = true
  has_projects                            = true
  has_wiki                                = true
  homepage_url                            = null
  ignore_vulnerability_alerts_during_read = null
  is_template                             = false
  license_template                        = null
  merge_commit_message                    = null
  merge_commit_title                      = null
  name                                    = "Totem"

  squash_merge_commit_message = null
  squash_merge_commit_title   = null
  topics                      = []
  visibility                  = "public"
  web_commit_signoff_required = null
}

import {
  to       = github_repository.all_27
  provider = github
  identity = {
    name  = "Totem"
    owner = "austinvalle"
  }
}

resource "github_repository" "all_28" {
  provider               = github
  allow_auto_merge       = null
  allow_merge_commit     = null
  allow_rebase_merge     = null
  allow_squash_merge     = null
  allow_update_branch    = null
  archive_on_destroy     = null
  archived               = false
  auto_init              = null
  delete_branch_on_merge = null
  description            = "A smart mirror that displays time, weather, calendar events, and more."

  gitignore_template                      = null
  has_discussions                         = false
  has_downloads                           = true
  has_issues                              = true
  has_projects                            = true
  has_wiki                                = true
  homepage_url                            = null
  ignore_vulnerability_alerts_during_read = null
  is_template                             = false
  license_template                        = null
  merge_commit_message                    = null
  merge_commit_title                      = null
  name                                    = "valle-smart-mirror"

  squash_merge_commit_message = null
  squash_merge_commit_title   = null
  topics                      = []
  visibility                  = "public"
  web_commit_signoff_required = null
}

import {
  to       = github_repository.all_28
  provider = github
  identity = {
    name  = "valle-smart-mirror"
    owner = "austinvalle"
  }
}

resource "github_repository" "all_29" {
  provider               = github
  allow_auto_merge       = null
  allow_merge_commit     = null
  allow_rebase_merge     = null
  allow_squash_merge     = null
  allow_update_branch    = null
  archive_on_destroy     = null
  archived               = false
  auto_init              = null
  delete_branch_on_merge = null
  description            = "Hashicorp Unified Docs"

  gitignore_template                      = null
  has_discussions                         = false
  has_downloads                           = true
  has_issues                              = false
  has_projects                            = true
  has_wiki                                = true
  homepage_url                            = "https://web-unified-docs-hashicorp.vercel.app"
  ignore_vulnerability_alerts_during_read = null
  is_template                             = false
  license_template                        = null
  merge_commit_message                    = null
  merge_commit_title                      = null
  name                                    = "web-unified-docs"

  squash_merge_commit_message = null
  squash_merge_commit_title   = null
  topics                      = []
  visibility                  = "public"
  web_commit_signoff_required = null
}

import {
  to       = github_repository.all_29
  provider = github
  identity = {
    name  = "web-unified-docs"
    owner = "austinvalle"
  }
}

resource "github_repository" "all_30" {
  provider               = github
  allow_auto_merge       = null
  allow_merge_commit     = null
  allow_rebase_merge     = null
  allow_squash_merge     = null
  allow_update_branch    = null
  archive_on_destroy     = null
  archived               = false
  auto_init              = null
  delete_branch_on_merge = null
  description            = "Docker bundle that provides xTeVe and guide2go for enhanced guide data and Plex/Emby IPTV integration, and Lazystream for integrated high-quality NHL and MLB games."

  gitignore_template                      = null
  has_discussions                         = false
  has_downloads                           = true
  has_issues                              = false
  has_projects                            = true
  has_wiki                                = true
  homepage_url                            = null
  ignore_vulnerability_alerts_during_read = null
  is_template                             = false
  license_template                        = null
  merge_commit_message                    = null
  merge_commit_title                      = null
  name                                    = "xteve_lazystream"

  squash_merge_commit_message = null
  squash_merge_commit_title   = null
  topics                      = []
  visibility                  = "public"
  web_commit_signoff_required = null
}

import {
  to       = github_repository.all_30
  provider = github
  identity = {
    name  = "xteve_lazystream"
    owner = "austinvalle"
  }
}


