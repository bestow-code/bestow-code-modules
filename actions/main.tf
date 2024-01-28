variable "description" {
  description = "The description of the repository"
  type        = string
  default     = ""
}

resource "github_repository" "actions" {
  name        = "${var.organization_name}-actions"
  description = "Reusable Github Actions"
  visibility  = "public"
  auto_init   = "true"
  archive_on_destroy = "true"
  delete_branch_on_merge = "true"
  allow_auto_merge = "true"
  allow_merge_commit = "false"
}

#
#resource "github_actions_secret" "release_please_token" {
#  repository       = var.repository_name
#  secret_name      = "release_please_token"
#  plaintext_value  = var.release_please_token
#}
