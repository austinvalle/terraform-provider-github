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

  full_name                               = "austinvalle/aoc-2020"
  git_clone_url                           = "git://github.com/austinvalle/aoc-2020.git"
  gitignore_template                      = null
  has_discussions                         = false
  has_downloads                           = true
  has_issues                              = true
  has_projects                            = true
  has_wiki                                = true
  homepage_url                            = null
  html_url                                = "https://github.com/austinvalle/aoc-2020"
  http_clone_url                          = "https://github.com/austinvalle/aoc-2020.git"
  id                                      = "aoc-2020"
  ignore_vulnerability_alerts_during_read = null
  is_template                             = false
  license_template                        = null
  merge_commit_message                    = null
  merge_commit_title                      = null
  name                                    = "aoc-2020"
  node_id                                 = "MDEwOlJlcG9zaXRvcnkzMTk4NDA1NzY="

  squash_merge_commit_message = null
  squash_merge_commit_title   = null
  ssh_clone_url               = "git@github.com:austinvalle/aoc-2020.git"
  svn_url                     = "https://github.com/austinvalle/aoc-2020"
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

  full_name                               = "austinvalle/austinvalle"
  git_clone_url                           = "git://github.com/austinvalle/austinvalle.git"
  gitignore_template                      = null
  has_discussions                         = false
  has_downloads                           = true
  has_issues                              = true
  has_projects                            = true
  has_wiki                                = true
  homepage_url                            = null
  html_url                                = "https://github.com/austinvalle/austinvalle"
  http_clone_url                          = "https://github.com/austinvalle/austinvalle.git"
  id                                      = "austinvalle"
  ignore_vulnerability_alerts_during_read = null
  is_template                             = false
  license_template                        = null
  merge_commit_message                    = null
  merge_commit_title                      = null
  name                                    = "austinvalle"
  node_id                                 = "R_kgDOH1Shmw"

  squash_merge_commit_message = null
  squash_merge_commit_title   = null
  ssh_clone_url               = "git@github.com:austinvalle/austinvalle.git"
  svn_url                     = "https://github.com/austinvalle/austinvalle"
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

  full_name                               = "austinvalle/austinvalle.com"
  git_clone_url                           = "git://github.com/austinvalle/austinvalle.com.git"
  gitignore_template                      = null
  has_discussions                         = false
  has_downloads                           = true
  has_issues                              = true
  has_projects                            = true
  has_wiki                                = true
  homepage_url                            = "https://austinvalle.com"
  html_url                                = "https://github.com/austinvalle/austinvalle.com"
  http_clone_url                          = "https://github.com/austinvalle/austinvalle.com.git"
  id                                      = "austinvalle.com"
  ignore_vulnerability_alerts_during_read = null
  is_template                             = false
  license_template                        = null
  merge_commit_message                    = null
  merge_commit_title                      = null
  name                                    = "austinvalle.com"
  node_id                                 = "MDEwOlJlcG9zaXRvcnkxMDkwODc2MDM="

  squash_merge_commit_message = null
  squash_merge_commit_title   = null
  ssh_clone_url               = "git@github.com:austinvalle/austinvalle.com.git"
  svn_url                     = "https://github.com/austinvalle/austinvalle.com"
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

  full_name                               = "austinvalle/checkov"
  git_clone_url                           = "git://github.com/austinvalle/checkov.git"
  gitignore_template                      = null
  has_discussions                         = false
  has_downloads                           = true
  has_issues                              = false
  has_projects                            = true
  has_wiki                                = true
  homepage_url                            = "https://www.checkov.io/"
  html_url                                = "https://github.com/austinvalle/checkov"
  http_clone_url                          = "https://github.com/austinvalle/checkov.git"
  id                                      = "checkov"
  ignore_vulnerability_alerts_during_read = null
  is_template                             = false
  license_template                        = null
  merge_commit_message                    = null
  merge_commit_title                      = null
  name                                    = "checkov"
  node_id                                 = "MDEwOlJlcG9zaXRvcnk0MDg0MzgyOTE="

  squash_merge_commit_message = null
  squash_merge_commit_title   = null
  ssh_clone_url               = "git@github.com:austinvalle/checkov.git"
  svn_url                     = "https://github.com/austinvalle/checkov"
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

  full_name                               = "austinvalle/dgp"
  git_clone_url                           = "git://github.com/austinvalle/dgp.git"
  gitignore_template                      = null
  has_discussions                         = false
  has_downloads                           = true
  has_issues                              = true
  has_projects                            = true
  has_wiki                                = true
  homepage_url                            = ""
  html_url                                = "https://github.com/austinvalle/dgp"
  http_clone_url                          = "https://github.com/austinvalle/dgp.git"
  id                                      = "dgp"
  ignore_vulnerability_alerts_during_read = null
  is_template                             = false
  license_template                        = null
  merge_commit_message                    = null
  merge_commit_title                      = null
  name                                    = "dgp"
  node_id                                 = "R_kgDOH6tPPw"

  squash_merge_commit_message = null
  squash_merge_commit_title   = null
  ssh_clone_url               = "git@github.com:austinvalle/dgp.git"
  svn_url                     = "https://github.com/austinvalle/dgp"
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

  full_name                               = "austinvalle/fantasy-calculator"
  git_clone_url                           = "git://github.com/austinvalle/fantasy-calculator.git"
  gitignore_template                      = null
  has_discussions                         = false
  has_downloads                           = true
  has_issues                              = true
  has_projects                            = true
  has_wiki                                = true
  homepage_url                            = null
  html_url                                = "https://github.com/austinvalle/fantasy-calculator"
  http_clone_url                          = "https://github.com/austinvalle/fantasy-calculator.git"
  id                                      = "fantasy-calculator"
  ignore_vulnerability_alerts_during_read = null
  is_template                             = false
  license_template                        = null
  merge_commit_message                    = null
  merge_commit_title                      = null
  name                                    = "fantasy-calculator"
  node_id                                 = "MDEwOlJlcG9zaXRvcnkxNDIxMDQ1NTM="

  squash_merge_commit_message = null
  squash_merge_commit_title   = null
  ssh_clone_url               = "git@github.com:austinvalle/fantasy-calculator.git"
  svn_url                     = "https://github.com/austinvalle/fantasy-calculator"
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

  full_name                               = "austinvalle/gh-web-components"
  git_clone_url                           = "git://github.com/austinvalle/gh-web-components.git"
  gitignore_template                      = null
  has_discussions                         = false
  has_downloads                           = true
  has_issues                              = true
  has_projects                            = true
  has_wiki                                = true
  homepage_url                            = null
  html_url                                = "https://github.com/austinvalle/gh-web-components"
  http_clone_url                          = "https://github.com/austinvalle/gh-web-components.git"
  id                                      = "gh-web-components"
  ignore_vulnerability_alerts_during_read = null
  is_template                             = false
  license_template                        = null
  merge_commit_message                    = null
  merge_commit_title                      = null
  name                                    = "gh-web-components"
  node_id                                 = "MDEwOlJlcG9zaXRvcnkxOTkxMjM1MTE="

  squash_merge_commit_message = null
  squash_merge_commit_title   = null
  ssh_clone_url               = "git@github.com:austinvalle/gh-web-components.git"
  svn_url                     = "https://github.com/austinvalle/gh-web-components"
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

  full_name                               = "austinvalle/go-internals-sandbox"
  git_clone_url                           = "git://github.com/austinvalle/go-internals-sandbox.git"
  gitignore_template                      = null
  has_discussions                         = false
  has_downloads                           = true
  has_issues                              = true
  has_projects                            = true
  has_wiki                                = true
  homepage_url                            = null
  html_url                                = "https://github.com/austinvalle/go-internals-sandbox"
  http_clone_url                          = "https://github.com/austinvalle/go-internals-sandbox.git"
  id                                      = "go-internals-sandbox"
  ignore_vulnerability_alerts_during_read = null
  is_template                             = false
  license_template                        = null
  merge_commit_message                    = null
  merge_commit_title                      = null
  name                                    = "go-internals-sandbox"
  node_id                                 = "R_kgDOJBQ8FQ"

  squash_merge_commit_message = null
  squash_merge_commit_title   = null
  ssh_clone_url               = "git@github.com:austinvalle/go-internals-sandbox.git"
  svn_url                     = "https://github.com/austinvalle/go-internals-sandbox"
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

  full_name                               = "austinvalle/gotube"
  git_clone_url                           = "git://github.com/austinvalle/gotube.git"
  gitignore_template                      = null
  has_discussions                         = false
  has_downloads                           = true
  has_issues                              = true
  has_projects                            = true
  has_wiki                                = true
  homepage_url                            = null
  html_url                                = "https://github.com/austinvalle/gotube"
  http_clone_url                          = "https://github.com/austinvalle/gotube.git"
  id                                      = "gotube"
  ignore_vulnerability_alerts_during_read = null
  is_template                             = false
  license_template                        = null
  merge_commit_message                    = null
  merge_commit_title                      = null
  name                                    = "gotube"
  node_id                                 = "MDEwOlJlcG9zaXRvcnkxMjA5Nzk4ODM="

  squash_merge_commit_message = null
  squash_merge_commit_title   = null
  ssh_clone_url               = "git@github.com:austinvalle/gotube.git"
  svn_url                     = "https://github.com/austinvalle/gotube"
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

  full_name                               = "austinvalle/hammy-bot"
  git_clone_url                           = "git://github.com/austinvalle/hammy-bot.git"
  gitignore_template                      = null
  has_discussions                         = false
  has_downloads                           = true
  has_issues                              = true
  has_projects                            = true
  has_wiki                                = true
  homepage_url                            = ""
  html_url                                = "https://github.com/austinvalle/hammy-bot"
  http_clone_url                          = "https://github.com/austinvalle/hammy-bot.git"
  id                                      = "hammy-bot"
  ignore_vulnerability_alerts_during_read = null
  is_template                             = false
  license_template                        = null
  merge_commit_message                    = null
  merge_commit_title                      = null
  name                                    = "hammy-bot"
  node_id                                 = "MDEwOlJlcG9zaXRvcnk2NjI0ODMzMQ=="

  squash_merge_commit_message = null
  squash_merge_commit_title   = null
  ssh_clone_url               = "git@github.com:austinvalle/hammy-bot.git"
  svn_url                     = "https://github.com/austinvalle/hammy-bot"
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

  full_name                               = "austinvalle/hello-github-actions"
  git_clone_url                           = "git://github.com/austinvalle/hello-github-actions.git"
  gitignore_template                      = null
  has_discussions                         = false
  has_downloads                           = true
  has_issues                              = true
  has_projects                            = true
  has_wiki                                = true
  homepage_url                            = "https://lab.github.com/github/hello-github-actions!"
  html_url                                = "https://github.com/austinvalle/hello-github-actions"
  http_clone_url                          = "https://github.com/austinvalle/hello-github-actions.git"
  id                                      = "hello-github-actions"
  ignore_vulnerability_alerts_during_read = null
  is_template                             = false
  license_template                        = null
  merge_commit_message                    = null
  merge_commit_title                      = null
  name                                    = "hello-github-actions"
  node_id                                 = "MDEwOlJlcG9zaXRvcnkyMDY3MDM1ODU="

  squash_merge_commit_message = null
  squash_merge_commit_title   = null
  ssh_clone_url               = "git@github.com:austinvalle/hello-github-actions.git"
  svn_url                     = "https://github.com/austinvalle/hello-github-actions"
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

  full_name                               = "austinvalle/hugo-theme-hello-friend-ng"
  git_clone_url                           = "git://github.com/austinvalle/hugo-theme-hello-friend-ng.git"
  gitignore_template                      = null
  has_discussions                         = false
  has_downloads                           = true
  has_issues                              = false
  has_projects                            = true
  has_wiki                                = true
  homepage_url                            = "https://github.com/rhazdon/hugo-theme-hello-friend-ng/"
  html_url                                = "https://github.com/austinvalle/hugo-theme-hello-friend-ng"
  http_clone_url                          = "https://github.com/austinvalle/hugo-theme-hello-friend-ng.git"
  id                                      = "hugo-theme-hello-friend-ng"
  ignore_vulnerability_alerts_during_read = null
  is_template                             = false
  license_template                        = null
  merge_commit_message                    = null
  merge_commit_title                      = null
  name                                    = "hugo-theme-hello-friend-ng"
  node_id                                 = "R_kgDOGi23Ug"

  squash_merge_commit_message = null
  squash_merge_commit_title   = null
  ssh_clone_url               = "git@github.com:austinvalle/hugo-theme-hello-friend-ng.git"
  svn_url                     = "https://github.com/austinvalle/hugo-theme-hello-friend-ng"
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

  full_name                               = "austinvalle/mcu-timeline"
  git_clone_url                           = "git://github.com/austinvalle/mcu-timeline.git"
  gitignore_template                      = null
  has_discussions                         = false
  has_downloads                           = true
  has_issues                              = true
  has_projects                            = true
  has_wiki                                = true
  homepage_url                            = "https://mcu.valle.io/"
  html_url                                = "https://github.com/austinvalle/mcu-timeline"
  http_clone_url                          = "https://github.com/austinvalle/mcu-timeline.git"
  id                                      = "mcu-timeline"
  ignore_vulnerability_alerts_during_read = null
  is_template                             = false
  license_template                        = null
  merge_commit_message                    = null
  merge_commit_title                      = null
  name                                    = "mcu-timeline"
  node_id                                 = "MDEwOlJlcG9zaXRvcnkxODU2OTk2NzA="

  squash_merge_commit_message = null
  squash_merge_commit_title   = null
  ssh_clone_url               = "git@github.com:austinvalle/mcu-timeline.git"
  svn_url                     = "https://github.com/austinvalle/mcu-timeline"
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

  full_name                               = "austinvalle/mlbot"
  git_clone_url                           = "git://github.com/austinvalle/mlbot.git"
  gitignore_template                      = null
  has_discussions                         = false
  has_downloads                           = true
  has_issues                              = true
  has_projects                            = true
  has_wiki                                = true
  homepage_url                            = null
  html_url                                = "https://github.com/austinvalle/mlbot"
  http_clone_url                          = "https://github.com/austinvalle/mlbot.git"
  id                                      = "mlbot"
  ignore_vulnerability_alerts_during_read = null
  is_template                             = false
  license_template                        = null
  merge_commit_message                    = null
  merge_commit_title                      = null
  name                                    = "mlbot"
  node_id                                 = "MDEwOlJlcG9zaXRvcnkzMDU4NzkxNjg="

  squash_merge_commit_message = null
  squash_merge_commit_title   = null
  ssh_clone_url               = "git@github.com:austinvalle/mlbot.git"
  svn_url                     = "https://github.com/austinvalle/mlbot"
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

  full_name                               = "austinvalle/ng-spa-land"
  git_clone_url                           = "git://github.com/austinvalle/ng-spa-land.git"
  gitignore_template                      = null
  has_discussions                         = false
  has_downloads                           = true
  has_issues                              = true
  has_projects                            = true
  has_wiki                                = true
  homepage_url                            = null
  html_url                                = "https://github.com/austinvalle/ng-spa-land"
  http_clone_url                          = "https://github.com/austinvalle/ng-spa-land.git"
  id                                      = "ng-spa-land"
  ignore_vulnerability_alerts_during_read = null
  is_template                             = false
  license_template                        = null
  merge_commit_message                    = null
  merge_commit_title                      = null
  name                                    = "ng-spa-land"
  node_id                                 = "MDEwOlJlcG9zaXRvcnkxMzYyNzc4OTE="

  squash_merge_commit_message = null
  squash_merge_commit_title   = null
  ssh_clone_url               = "git@github.com:austinvalle/ng-spa-land.git"
  svn_url                     = "https://github.com/austinvalle/ng-spa-land"
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

  full_name                               = "austinvalle/plex-rex"
  git_clone_url                           = "git://github.com/austinvalle/plex-rex.git"
  gitignore_template                      = null
  has_discussions                         = false
  has_downloads                           = true
  has_issues                              = true
  has_projects                            = true
  has_wiki                                = true
  homepage_url                            = null
  html_url                                = "https://github.com/austinvalle/plex-rex"
  http_clone_url                          = "https://github.com/austinvalle/plex-rex.git"
  id                                      = "plex-rex"
  ignore_vulnerability_alerts_during_read = null
  is_template                             = false
  license_template                        = null
  merge_commit_message                    = null
  merge_commit_title                      = null
  name                                    = "plex-rex"
  node_id                                 = "MDEwOlJlcG9zaXRvcnkxMzg5NjIxMDE="

  squash_merge_commit_message = null
  squash_merge_commit_title   = null
  ssh_clone_url               = "git@github.com:austinvalle/plex-rex.git"
  svn_url                     = "https://github.com/austinvalle/plex-rex"
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

  full_name                               = "austinvalle/projecteval"
  git_clone_url                           = "git://github.com/austinvalle/projecteval.git"
  gitignore_template                      = null
  has_discussions                         = false
  has_downloads                           = true
  has_issues                              = true
  has_projects                            = true
  has_wiki                                = true
  homepage_url                            = ""
  html_url                                = "https://github.com/austinvalle/projecteval"
  http_clone_url                          = "https://github.com/austinvalle/projecteval.git"
  id                                      = "projecteval"
  ignore_vulnerability_alerts_during_read = null
  is_template                             = false
  license_template                        = null
  merge_commit_message                    = null
  merge_commit_title                      = null
  name                                    = "projecteval"
  node_id                                 = "MDEwOlJlcG9zaXRvcnkyNTUwMTI4OA=="

  squash_merge_commit_message = null
  squash_merge_commit_title   = null
  ssh_clone_url               = "git@github.com:austinvalle/projecteval.git"
  svn_url                     = "https://github.com/austinvalle/projecteval"
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

  full_name                               = "austinvalle/rest-api-example"
  git_clone_url                           = "git://github.com/austinvalle/rest-api-example.git"
  gitignore_template                      = null
  has_discussions                         = false
  has_downloads                           = true
  has_issues                              = true
  has_projects                            = true
  has_wiki                                = true
  homepage_url                            = null
  html_url                                = "https://github.com/austinvalle/rest-api-example"
  http_clone_url                          = "https://github.com/austinvalle/rest-api-example.git"
  id                                      = "rest-api-example"
  ignore_vulnerability_alerts_during_read = null
  is_template                             = false
  license_template                        = null
  merge_commit_message                    = null
  merge_commit_title                      = null
  name                                    = "rest-api-example"
  node_id                                 = "R_kgDOIWG7jg"

  squash_merge_commit_message = null
  squash_merge_commit_title   = null
  ssh_clone_url               = "git@github.com:austinvalle/rest-api-example.git"
  svn_url                     = "https://github.com/austinvalle/rest-api-example"
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

  full_name                               = "austinvalle/rtc-connect"
  git_clone_url                           = "git://github.com/austinvalle/rtc-connect.git"
  gitignore_template                      = null
  has_discussions                         = false
  has_downloads                           = true
  has_issues                              = true
  has_projects                            = true
  has_wiki                                = true
  homepage_url                            = null
  html_url                                = "https://github.com/austinvalle/rtc-connect"
  http_clone_url                          = "https://github.com/austinvalle/rtc-connect.git"
  id                                      = "rtc-connect"
  ignore_vulnerability_alerts_during_read = null
  is_template                             = false
  license_template                        = null
  merge_commit_message                    = null
  merge_commit_title                      = null
  name                                    = "rtc-connect"
  node_id                                 = "MDEwOlJlcG9zaXRvcnkyNzc2NDk0MDA="

  squash_merge_commit_message = null
  squash_merge_commit_title   = null
  ssh_clone_url               = "git@github.com:austinvalle/rtc-connect.git"
  svn_url                     = "https://github.com/austinvalle/rtc-connect"
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

  full_name                               = "austinvalle/SnooSports.bundle"
  git_clone_url                           = "git://github.com/austinvalle/SnooSports.bundle.git"
  gitignore_template                      = null
  has_discussions                         = false
  has_downloads                           = true
  has_issues                              = true
  has_projects                            = true
  has_wiki                                = true
  homepage_url                            = null
  html_url                                = "https://github.com/austinvalle/SnooSports.bundle"
  http_clone_url                          = "https://github.com/austinvalle/SnooSports.bundle.git"
  id                                      = "SnooSports.bundle"
  ignore_vulnerability_alerts_during_read = null
  is_template                             = false
  license_template                        = null
  merge_commit_message                    = null
  merge_commit_title                      = null
  name                                    = "SnooSports.bundle"
  node_id                                 = "MDEwOlJlcG9zaXRvcnkxMzA3Nzc0MTA="

  squash_merge_commit_message = null
  squash_merge_commit_title   = null
  ssh_clone_url               = "git@github.com:austinvalle/SnooSports.bundle.git"
  svn_url                     = "https://github.com/austinvalle/SnooSports.bundle"
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

  full_name                               = "austinvalle/tdd-katas"
  git_clone_url                           = "git://github.com/austinvalle/tdd-katas.git"
  gitignore_template                      = null
  has_discussions                         = false
  has_downloads                           = true
  has_issues                              = true
  has_projects                            = true
  has_wiki                                = true
  homepage_url                            = ""
  html_url                                = "https://github.com/austinvalle/tdd-katas"
  http_clone_url                          = "https://github.com/austinvalle/tdd-katas.git"
  id                                      = "tdd-katas"
  ignore_vulnerability_alerts_during_read = null
  is_template                             = false
  license_template                        = null
  merge_commit_message                    = null
  merge_commit_title                      = null
  name                                    = "tdd-katas"
  node_id                                 = "MDEwOlJlcG9zaXRvcnkyMDkxOTc2NDM="

  squash_merge_commit_message = null
  squash_merge_commit_title   = null
  ssh_clone_url               = "git@github.com:austinvalle/tdd-katas.git"
  svn_url                     = "https://github.com/austinvalle/tdd-katas"
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

  full_name                               = "austinvalle/terraform"
  git_clone_url                           = "git://github.com/austinvalle/terraform.git"
  gitignore_template                      = null
  has_discussions                         = false
  has_downloads                           = true
  has_issues                              = false
  has_projects                            = true
  has_wiki                                = false
  homepage_url                            = "http://developer.hashicorp.com/terraform"
  html_url                                = "https://github.com/austinvalle/terraform"
  http_clone_url                          = "https://github.com/austinvalle/terraform.git"
  id                                      = "terraform"
  ignore_vulnerability_alerts_during_read = null
  is_template                             = false
  license_template                        = null
  merge_commit_message                    = null
  merge_commit_title                      = null
  name                                    = "terraform"
  node_id                                 = "R_kgDOPU81OA"

  squash_merge_commit_message = null
  squash_merge_commit_title   = null
  ssh_clone_url               = "git@github.com:austinvalle/terraform.git"
  svn_url                     = "https://github.com/austinvalle/terraform"
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

  full_name                               = "austinvalle/terraform-provider-bufo"
  git_clone_url                           = "git://github.com/austinvalle/terraform-provider-bufo.git"
  gitignore_template                      = null
  has_discussions                         = false
  has_downloads                           = true
  has_issues                              = true
  has_projects                            = true
  has_wiki                                = false
  homepage_url                            = "https://registry.terraform.io/providers/austinvalle/bufo/latest/docs"
  html_url                                = "https://github.com/austinvalle/terraform-provider-bufo"
  http_clone_url                          = "https://github.com/austinvalle/terraform-provider-bufo.git"
  id                                      = "terraform-provider-bufo"
  ignore_vulnerability_alerts_during_read = null
  is_template                             = false
  license_template                        = null
  merge_commit_message                    = null
  merge_commit_title                      = null
  name                                    = "terraform-provider-bufo"
  node_id                                 = "R_kgDOPU242g"

  squash_merge_commit_message = null
  squash_merge_commit_title   = null
  ssh_clone_url               = "git@github.com:austinvalle/terraform-provider-bufo.git"
  svn_url                     = "https://github.com/austinvalle/terraform-provider-bufo"
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

  full_name                               = "austinvalle/terraform-provider-discord"
  git_clone_url                           = "git://github.com/austinvalle/terraform-provider-discord.git"
  gitignore_template                      = null
  has_discussions                         = false
  has_downloads                           = true
  has_issues                              = true
  has_projects                            = false
  has_wiki                                = false
  homepage_url                            = null
  html_url                                = "https://github.com/austinvalle/terraform-provider-discord"
  http_clone_url                          = "https://github.com/austinvalle/terraform-provider-discord.git"
  id                                      = "terraform-provider-discord"
  ignore_vulnerability_alerts_during_read = null
  is_template                             = false
  license_template                        = null
  merge_commit_message                    = null
  merge_commit_title                      = null
  name                                    = "terraform-provider-discord"
  node_id                                 = "R_kgDOJqyxyQ"

  squash_merge_commit_message = null
  squash_merge_commit_title   = null
  ssh_clone_url               = "git@github.com:austinvalle/terraform-provider-discord.git"
  svn_url                     = "https://github.com/austinvalle/terraform-provider-discord"
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

  full_name                               = "austinvalle/terraform-provider-github"
  git_clone_url                           = "git://github.com/austinvalle/terraform-provider-github.git"
  gitignore_template                      = null
  has_discussions                         = false
  has_downloads                           = true
  has_issues                              = false
  has_projects                            = true
  has_wiki                                = false
  homepage_url                            = "https://www.terraform.io/docs/providers/github/"
  html_url                                = "https://github.com/austinvalle/terraform-provider-github"
  http_clone_url                          = "https://github.com/austinvalle/terraform-provider-github.git"
  id                                      = "terraform-provider-github"
  ignore_vulnerability_alerts_during_read = null
  is_template                             = false
  license_template                        = null
  merge_commit_message                    = null
  merge_commit_title                      = null
  name                                    = "terraform-provider-github"
  node_id                                 = "R_kgDOQVuRBw"

  squash_merge_commit_message = null
  squash_merge_commit_title   = null
  ssh_clone_url               = "git@github.com:austinvalle/terraform-provider-github.git"
  svn_url                     = "https://github.com/austinvalle/terraform-provider-github"
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

  full_name                               = "austinvalle/terraform-provider-sandbox"
  git_clone_url                           = "git://github.com/austinvalle/terraform-provider-sandbox.git"
  gitignore_template                      = null
  has_discussions                         = false
  has_downloads                           = true
  has_issues                              = true
  has_projects                            = true
  has_wiki                                = true
  homepage_url                            = null
  html_url                                = "https://github.com/austinvalle/terraform-provider-sandbox"
  http_clone_url                          = "https://github.com/austinvalle/terraform-provider-sandbox.git"
  id                                      = "terraform-provider-sandbox"
  ignore_vulnerability_alerts_during_read = null
  is_template                             = false
  license_template                        = null
  merge_commit_message                    = null
  merge_commit_title                      = null
  name                                    = "terraform-provider-sandbox"
  node_id                                 = "R_kgDOIys6XQ"

  squash_merge_commit_message = null
  squash_merge_commit_title   = null
  ssh_clone_url               = "git@github.com:austinvalle/terraform-provider-sandbox.git"
  svn_url                     = "https://github.com/austinvalle/terraform-provider-sandbox"
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

  full_name                               = "austinvalle/tf-test-identity-repo"
  git_clone_url                           = "git://github.com/austinvalle/tf-test-identity-repo.git"
  gitignore_template                      = null
  has_discussions                         = false
  has_downloads                           = false
  has_issues                              = false
  has_projects                            = false
  has_wiki                                = false
  homepage_url                            = ""
  html_url                                = "https://github.com/austinvalle/tf-test-identity-repo"
  http_clone_url                          = "https://github.com/austinvalle/tf-test-identity-repo.git"
  id                                      = "tf-test-identity-repo"
  ignore_vulnerability_alerts_during_read = null
  is_template                             = false
  license_template                        = null
  merge_commit_message                    = null
  merge_commit_title                      = null
  name                                    = "tf-test-identity-repo"
  node_id                                 = "R_kgDOQV50pw"

  squash_merge_commit_message = null
  squash_merge_commit_title   = null
  ssh_clone_url               = "git@github.com:austinvalle/tf-test-identity-repo.git"
  svn_url                     = "https://github.com/austinvalle/tf-test-identity-repo"
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

  full_name                               = "austinvalle/Totem"
  git_clone_url                           = "git://github.com/austinvalle/Totem.git"
  gitignore_template                      = null
  has_discussions                         = false
  has_downloads                           = true
  has_issues                              = true
  has_projects                            = true
  has_wiki                                = true
  homepage_url                            = null
  html_url                                = "https://github.com/austinvalle/Totem"
  http_clone_url                          = "https://github.com/austinvalle/Totem.git"
  id                                      = "Totem"
  ignore_vulnerability_alerts_during_read = null
  is_template                             = false
  license_template                        = null
  merge_commit_message                    = null
  merge_commit_title                      = null
  name                                    = "Totem"
  node_id                                 = "MDEwOlJlcG9zaXRvcnkzNTc0NjY5OA=="

  squash_merge_commit_message = null
  squash_merge_commit_title   = null
  ssh_clone_url               = "git@github.com:austinvalle/Totem.git"
  svn_url                     = "https://github.com/austinvalle/Totem"
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

  full_name                               = "austinvalle/valle-smart-mirror"
  git_clone_url                           = "git://github.com/austinvalle/valle-smart-mirror.git"
  gitignore_template                      = null
  has_discussions                         = false
  has_downloads                           = true
  has_issues                              = true
  has_projects                            = true
  has_wiki                                = true
  homepage_url                            = null
  html_url                                = "https://github.com/austinvalle/valle-smart-mirror"
  http_clone_url                          = "https://github.com/austinvalle/valle-smart-mirror.git"
  id                                      = "valle-smart-mirror"
  ignore_vulnerability_alerts_during_read = null
  is_template                             = false
  license_template                        = null
  merge_commit_message                    = null
  merge_commit_title                      = null
  name                                    = "valle-smart-mirror"
  node_id                                 = "MDEwOlJlcG9zaXRvcnk1MDA3NzU2MA=="

  squash_merge_commit_message = null
  squash_merge_commit_title   = null
  ssh_clone_url               = "git@github.com:austinvalle/valle-smart-mirror.git"
  svn_url                     = "https://github.com/austinvalle/valle-smart-mirror"
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

  full_name                               = "austinvalle/web-unified-docs"
  git_clone_url                           = "git://github.com/austinvalle/web-unified-docs.git"
  gitignore_template                      = null
  has_discussions                         = false
  has_downloads                           = true
  has_issues                              = false
  has_projects                            = true
  has_wiki                                = true
  homepage_url                            = "https://web-unified-docs-hashicorp.vercel.app"
  html_url                                = "https://github.com/austinvalle/web-unified-docs"
  http_clone_url                          = "https://github.com/austinvalle/web-unified-docs.git"
  id                                      = "web-unified-docs"
  ignore_vulnerability_alerts_during_read = null
  is_template                             = false
  license_template                        = null
  merge_commit_message                    = null
  merge_commit_title                      = null
  name                                    = "web-unified-docs"
  node_id                                 = "R_kgDOOKuXTw"

  squash_merge_commit_message = null
  squash_merge_commit_title   = null
  ssh_clone_url               = "git@github.com:austinvalle/web-unified-docs.git"
  svn_url                     = "https://github.com/austinvalle/web-unified-docs"
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

  full_name                               = "austinvalle/xteve_lazystream"
  git_clone_url                           = "git://github.com/austinvalle/xteve_lazystream.git"
  gitignore_template                      = null
  has_discussions                         = false
  has_downloads                           = true
  has_issues                              = false
  has_projects                            = true
  has_wiki                                = true
  homepage_url                            = ""
  html_url                                = "https://github.com/austinvalle/xteve_lazystream"
  http_clone_url                          = "https://github.com/austinvalle/xteve_lazystream.git"
  id                                      = "xteve_lazystream"
  ignore_vulnerability_alerts_during_read = null
  is_template                             = false
  license_template                        = null
  merge_commit_message                    = null
  merge_commit_title                      = null
  name                                    = "xteve_lazystream"
  node_id                                 = "MDEwOlJlcG9zaXRvcnkzNjg3MTM5MjY="

  squash_merge_commit_message = null
  squash_merge_commit_title   = null
  ssh_clone_url               = "git@github.com:austinvalle/xteve_lazystream.git"
  svn_url                     = "https://github.com/austinvalle/xteve_lazystream"
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


