variable "description" {
  description = "The description of the repository"
  type        = string
  default     = ""
}

#import {
#  to = github_repository.repository
#  id = var.package_name
#}

resource "github_repository" "repository" {
  name        = var.package_name
  description = "A dart package"
  visibility  = "public"
  auto_init   = "true"
  archive_on_destroy = "true"
  delete_branch_on_merge = "true"
  allow_auto_merge = "true"
  allow_merge_commit = "false"
}

output "name" {
  value = github_repository.repository.name
}
