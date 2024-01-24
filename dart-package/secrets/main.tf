#data "github_repository" "repository" {
#  name        = var.repository_name
#
#}

resource "github_actions_secret" "onepub_token" {
  repository       = var.repository_name
  secret_name      = "onepub_token"
  plaintext_value  = var.onepub_token
}

resource "github_actions_secret" "release_please_token" {
  repository       = var.repository_name
  secret_name      = "release_please_token"
  plaintext_value  = var.release_please_token
}
