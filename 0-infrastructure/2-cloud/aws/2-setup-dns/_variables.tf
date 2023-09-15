variable "environment" {
  type    = string
  default = "pocs"
}

variable "region" {
  type    = string
  default = "us-east-1"
}

variable "root_domain_name" {
  type    = string
  default = "lpsm.dev"
}

variable "vpc_id" {
  type    = string
  default = "vpc-0a19ca6293d164a27"
}

variable "cloudflare_api_token" {
  type        = string
  description = "The API Token for operations"
  default     = ""
  sensitive   = true
}
