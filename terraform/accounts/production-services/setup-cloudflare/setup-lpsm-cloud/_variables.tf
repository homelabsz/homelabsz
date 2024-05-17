variable "cloudflare_api_token" {
  type        = string
  description = "The API Token for operations"
  default     = ""
  sensitive   = true
}

variable "root_domain_name" {
  type        = string
  description = "The DNS zone name which will be added"
  default     = "lpsm.cloud"
}
