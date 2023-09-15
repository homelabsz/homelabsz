variable "tf_organization" {
  type        = string
  description = "Name of the organization in Terraform Cloud"
  default     = "lpsm-dev"
}

variable "environment" {
  type    = string
  default = "pocs"
}

variable "profile" {
  type    = string
  default = "personal"
}

variable "region" {
  type    = string
  default = "us-east-1"
}
