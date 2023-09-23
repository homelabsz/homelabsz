variable "tenancy_ocid" {
  description = "The OCID of the tenancy."
  type        = string
}

variable "user_ocid" {
  description = "The OCID of the user."
  type        = string
}

variable "private_key_path" {
  description = "The location of the private key."
  type        = string
}

variable "fingerprint" {
  description = "The fingerprint of the private key."
  type        = string
}

variable "region" {
  description = "The name of the cloud region."
  type        = string
  default     = "ap-sydney-1"
}

variable "compartment_id" {
  description = "OCI Compartment ID"
  type        = string
  sensitive   = true
}
