
import {
  to = github_repository.repository
  id = var.package_name
}

resource "github_repository" "repository" {
  name        = var.package_name
  description = var.description
  visibility  = "public"
}
