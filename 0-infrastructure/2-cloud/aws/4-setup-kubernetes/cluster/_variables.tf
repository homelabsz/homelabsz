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
  type    = string
  default = "1.27"
}

variable "eks_subnets" {
  type    = list(string)
  default = [""]
}

variable "cidr_blocks" {
  type    = list(string)
  default = [""]
}

variable "vpc_id" {
  type    = string
  default = ""
}

variable "nodes_instances_sizes" {
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
