data "github_organization" "organization" {
  name = var.organization_name
}


import {
  to = github_repository.infrastructure_modules
  id = 'infrastructure-modules'
}

resource "github_repository" "infrastructure_modules" {
  name        = "infrastructure-modules"
  description = "infrastructure-modules for ${var.organization_name}"
  visibility  = "public"
}

import {
  to = github_repository.infrastructure_live
  id = 'infrastructure-live'
}

resource "github_repository" "infrastructure_live" {
  name        = "infrastructure-live"
  description = "infrastructure-live for ${var.organization_name}"
  visibility  = "private"
}
