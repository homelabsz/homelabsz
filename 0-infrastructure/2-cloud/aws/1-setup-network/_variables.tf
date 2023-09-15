variable "environment" {
  type    = string
  default = "pocs"
}

variable "region" {
  type    = string
  default = "us-east-1"
}

variable "vpc_cidr" {
  type    = string
  default = "10.165.16.0/20"
}
