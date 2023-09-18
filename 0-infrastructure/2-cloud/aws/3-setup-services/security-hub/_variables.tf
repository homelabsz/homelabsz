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

variable "enable_cis_standard" {
  description = "Boolean whether CIS standard is enabled."
  type        = bool
  default     = true
}

variable "enable_pci_dss_standard" {
  description = "Boolean whether PCI DSS standard is enabled."
  type        = bool
  default     = true
}

variable "enable_aws_foundational_standard" {
  description = "Boolean whether AWS Foundations standard is enabled."
  type        = bool
  default     = true
}
