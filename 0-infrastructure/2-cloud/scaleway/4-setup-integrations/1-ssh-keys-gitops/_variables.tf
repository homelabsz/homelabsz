variable "github_token" {
  type        = string
  description = "A GitHub OAuth / Personal Access Token"
  default     = ""
  sensitive   = true
}

variable "gitlab_token" {
  type        = string
  description = "The OAuth2 Token, Project, Group, Personal Access Token or CI Job Token used to connect to GitLab"
  default     = ""
  sensitive   = true
}

variable "access_key" {
  type        = string
  description = "Scaleway access key"
  default     = ""
  sensitive   = true
}

variable "secret_key" {
  type        = string
  description = "Scaleway secret key"
  default     = ""
  sensitive   = true
}

variable "project_id" {
  type        = string
  description = "Scaleway project ID that will be used as default value for project-scoped resources"
  default     = ""
}

variable "organization_id" {
  type        = string
  description = "Scaleway organization ID that will be used as default value for organization-scoped resources"
  default     = ""
}

variable "region" {
  type        = string
  description = "Scaleway region that will be used as default value for all resources"
  default     = "fr-par"
}

variable "zone" {
  type        = string
  description = "Scaleway zone that will be used as default value for all resources"
  default     = "fr-par-1"
}
