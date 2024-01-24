data "github_repository" "repository" {
  name        = var.repository_id

}

resource "github_actions_secret" "onepub_token" {
  repository       = data.github_repository.repository.name
  secret_name      = "onepub_token"
  plaintext_value  = var.onepub_token
}

resource "github_actions_secret" "dependabot_token" {
  repository       = data.github_repository.repository.name
  secret_name      = "dependabot_token"
  plaintext_value  = var.dependabot_token
}
