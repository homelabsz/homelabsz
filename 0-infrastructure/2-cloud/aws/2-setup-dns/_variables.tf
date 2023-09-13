variable "environment" {
  type    = string
  default = "pocs"
}

variable "profile" {
  type    = string
  default = "nuageit-pocs-services"
}

variable "region" {
  type    = string
  default = "sa-east-1"
}

variable "root_domain_name" {
  type    = string
  default = "nupocs.cloud"
}

variable "vpc_id" {
  type    = string
  default = "vpc-08617e93c7daf9b7a"
}
