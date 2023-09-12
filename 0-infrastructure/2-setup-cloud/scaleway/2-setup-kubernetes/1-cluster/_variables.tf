variable "region" {
  type        = string
  description = "Scaleway region that will be used as default value for all resources"
  default     = "fr-par"
}

variable "zone" {
  type        = string
  description = "Scaleway zone that will be used as default value for all resources"
  default     = "fr-par-1"
}

variable "project_id" {
  type        = string
  description = "Scaleway project ID that will be used as default value for project-scoped resources"
  default     = ""
}

variable "organization_id" {
  type        = string
  description = "Scaleway organization ID that will be used as default value for organization-scoped resources"
  default     = ""
}

variable "cluster_name" {
  type        = string
  description = "Name of the Kubernetes cluster"
  default     = ""
}

variable "cluster_version" {
  type        = string
  description = "Kubernetes cluster version"
  default     = "1.28"
}
