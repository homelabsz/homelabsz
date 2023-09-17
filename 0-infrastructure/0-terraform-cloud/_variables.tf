variable "tf_organization" {
  type        = string
  description = "Name of the organization in Terraform Cloud"
  default     = "lpsm-dev"
}

variable "tf_hostname" {
  type        = string
  default     = "app.terraform.io"
  description = "The hostname of the TFC or TFE instance you'd like to use with AWS"
}

variable "environment" {
  type        = string
  description = "AWS environment name"
  default     = "pocs"
}

variable "profile" {
  type        = string
  description = "AWS profile name as set in the shared configuration and credentials files"
  default     = "personal"
}

variable "region" {
  type        = string
  description = "AWS region where the provider will operate"
  default     = "us-east-1"
}
