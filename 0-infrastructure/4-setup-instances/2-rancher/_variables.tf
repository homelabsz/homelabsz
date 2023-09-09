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

variable "rancher_version" {
  type        = string
  description = "Rancher version"
  default     = "v2.7.4"
}

variable "rancher_admin_password" {
  type        = string
  description = "Rancher admin password"
  default     = ""
}

variable "rancher_server_url" {
  type        = string
  description = "Rancher Server URL"
  default     = ""
}

variable "cloudflare_api_token" {
  type        = string
  description = "The API Token for operations"
  default     = ""
  sensitive   = true
}

