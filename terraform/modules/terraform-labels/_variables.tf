variable "client_name" {
  type        = string
  default     = "nuageit"
  description = "The name of the client"
}

variable "criticality" {
  type        = string
  default     = "critical"
  description = "The criticality of the operation support"
  validation {
    condition     = contains(["critical", "high", "medium", "low"], var.criticality)
    error_message = "Valid values for variable criticality are (critical, high, medium, low)."
  }
}

variable "environment" {
  type        = string
  default     = "production"
  description = "The name of the environment"
  validation {
    condition     = contains(["develop", "pocs", "production", "sandbox", "stage"], var.environment)
    error_message = "Valid values for variable environment are (develop, pocs, production, sandbox, stage)."
  }
}
