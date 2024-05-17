variable "cloudflare_api_token" {
  type        = string
  description = "The API Token for operations"
  default     = ""
  sensitive   = true
}

variable "cloudflare_account" {
  type        = string
  description = "The name of the Cloudflare account"
  default     = "lpsm-dev"
}

variable "root_domain_name" {
  type        = string
  description = "The DNS zone name which will be added"
  default     = "lpsm.dev"
}
