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

variable "eks_version" {
  type        = string
  description = "Kubernetes version number"
  default     = "1.27"
}

variable "eks_vpc_name" {
  type        = list(string)
  description = "Kubernetes EKS VPC name"
  default     = [""]
}

variable "eks_subnet_names" {
  type        = list(string)
  description = "Kubernetes EKS Subnets name"
  default     = [""]
}

variable "nodes_instances_sizes" {
  type = list(string)
  default = [
    "t3a.medium"
  ]
}

variable "auto_scale_options" {
  type = object({
    min     = number
    max     = number
    desired = number
  })
  default = {
    min     = 3
    max     = 5
    desired = 3
  }
}
