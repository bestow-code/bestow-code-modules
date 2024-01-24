variable "repository_name" {
  description = "The name of the repository"
  type        = string
}

variable "repository_description" {
  description = "The description of the repository"
  type        = string
}

variable "repository_visibility" {
  description = "The visibility of the repository (public or private)"
  type        = string
  default     = "public"
}


variable "organization_description" {
  description = "The description of the organization"
  type        = string
}
