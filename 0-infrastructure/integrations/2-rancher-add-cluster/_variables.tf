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

variable "kubeconfig_context_name" {
  type        = string
  description = "Context name used in your kubeconfig"
  default     = ""
}
