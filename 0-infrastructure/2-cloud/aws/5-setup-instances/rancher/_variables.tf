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

variable "vpc_name" {
  type        = string
  default     = ""
  description = "AWS VPC name"
}

variable "subnet_name" {
  type        = string
  default     = ""
  description = "AWS subnet name"
}

variable "dns_zone" {
  type        = string
  default     = "lpsm.dev"
  description = "AWS Route 53 Zone name"
}

variable "instance_profile" {
  type        = string
  description = "A pre-defined profile to attach to the instance (default is to build our own)"
  default     = "custom-role-ec2-ssm-cw"
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
