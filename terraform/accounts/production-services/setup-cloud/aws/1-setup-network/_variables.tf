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

variable "vpc_cidr" {
  type        = string
  default     = "10.165.16.0/20"
  description = "The IPv4 CIDR block for the VPC"
}
