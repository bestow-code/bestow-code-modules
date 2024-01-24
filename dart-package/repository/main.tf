
variable "description" {
  description = "The description of the repository"
  type        = string
  default = ""
}

#import {
#  to = github_repository.repository
#  id = var.package_name
#}

resource "github_repository" "repository" {
  name        = var.package_name
  description = "A dart package"
  visibility  = "public"
}

output "name" {
  value = github_repository.repository.name
}
