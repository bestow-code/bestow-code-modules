import {
  to = github_repository.repository
  id = var.package_name
}

resource "github_repository" "repository" {
  name        = var.package_name
  description = var.description
  visibility  = "public"
}
resource "github_actions_secret" "onepub_token" {
  repository       = module.core_code_organization.repository_name
  secret_name      = "onepub_token"
  plaintext_value  = var.onepub_token
}

variable "onepub_token" {}

resource "github_actions_secret" "dependabot_github_access_token" {
  repository       = module.core_code_organization.repository_name
  secret_name      = "example_secret_name"
  plaintext_value  = var.some_secret_string
}

variable "some_secret_string" {}
