variable "environment" {
  type        = string
  description = "AWS environment name"
  default     = "pocs"
}

variable "region" {
  type        = string
  description = "AWS region where the provider will operate"
  default     = "us-east-1"
}

variable "root_domain_name" {
  type    = string
  default = "lpsm.dev"
}

variable "vpc_id" {
  type    = string
  default = "vpc-0a19ca6293d164a27"
}
