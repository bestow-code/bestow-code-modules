module "repository" {
  source       = "./repository"
  package_name = var.package_name
}

module "secrets" {
  source           = "./secrets"
  dependabot_token = var.dependabot_token
  onepub_token     = var.onepub_token
  repository_id    = module.repository.name
}

variable "dependabot_token" {}

variable "onepub_token" {
  type = string
}

variable "package_name" {
  default = ""
  type    = string
}
