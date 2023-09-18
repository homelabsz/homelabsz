variable "tfc_organization" {
  type        = string
  description = "Name of the organization in Terraform Cloud"
  default     = "lpsm-dev"
}

variable "tfc_hostname" {
  type        = string
  default     = "app.terraform.io"
  description = "The hostname of the TFC or TFE instance you'd like to use with AWS"
}

variable "tfc_aws_audience" {
  type        = string
  default     = "aws.workload.identity"
  description = "The audience value to use in run identity tokens"
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
