variable "environment" {
  type    = string
  default = "pocs"
}

variable "region" {
  type    = string
  default = "us-east-1"
}

variable "vpc_name" {
  type    = string
  default = ""
}

variable "subnet_name" {
  type    = string
  default = ""
}

variable "dns_zone" {
  type    = string
  default = "lpsm.dev"
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
