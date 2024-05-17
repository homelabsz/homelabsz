variable "client_name" {
  type        = string
  default     = "nuageit"
  description = "The name of the client"
}

variable "aws_criticality" {
  type        = string
  default     = "critical"
  description = "The criticality of AWS environment"
  validation {
    condition     = contains(["critical", "high", "medium", "low"], var.criticality)
    error_message = "Valid values for variable criticality are (critical, high, medium, low)."
  }
}

variable "aws_environment" {
  type        = string
  default     = "production"
  description = "The name of AWS environment"
  validation {
    condition     = contains(["develop", "pocs", "production", "sandbox", "stage"], var.environment)
    error_message = "Valid values for variable environment are (develop, pocs, production, sandbox, stage)."
  }
}
