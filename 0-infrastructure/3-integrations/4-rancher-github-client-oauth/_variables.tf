variable "rancher_api_url" {
  type        = string
  description = "Rancher API url"
  default     = ""
}

variable "rancher_token" {
  type        = string
  description = "Rancher API token key to connect to rancher"
  default     = ""
  sensitive   = true
}

variable "github_client_id" {
  type        = string
  description = "Github auth Client ID"
  default     = ""
}

variable "github_client_secret" {
  type        = string
  description = "Github auth Client secret"
  default     = ""
  sensitive   = true
}

variable "github_allowed_principal_ids" {
  type        = list(string)
  description = "Allowed principal ids for auth"
  default     = [""]
}
