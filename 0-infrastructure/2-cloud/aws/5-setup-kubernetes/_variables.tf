variable "environment" {
  type    = string
  default = "pocs"
}

variable "region" {
  type    = string
  default = "us-east-1"
}

variable "eks_version" {
  type    = string
  default = "1.23"
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
    min     = 4
    max     = 10
    desired = 6
  }
}
