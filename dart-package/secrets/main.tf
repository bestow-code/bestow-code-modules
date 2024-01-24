data "github_repository" "repository" {
  name        = var.package_name
  description = var.description
  visibility  = "public"
}

resource "github_actions_secret" "onepub_token" {
  repository       = data.github_repository.repository.repo_id
  secret_name      = "onepub_token"
  plaintext_value  = var.onepub_token
}

resource "github_actions_secret" "dependabot_token" {
  repository       = data.github_repository.repository.repo_id
  secret_name      = "dependabot_token"
  plaintext_value  = var.dependabot_token
}
