module "repository" {
  source       = "./repository"
  package_name = var.package_name
}

module "secrets" {
  source           = "./secrets"
  release_please_token = var.release_please_token
  onepub_token     = var.onepub_token
  repository_name    = module.repository.name
}

variable "release_please_token" {}

variable "onepub_token" {
  type = string
}

variable "package_name" {
  type    = string
}
