resource "time_static" "current" {}

locals {
  client_name     = lower(format("%v", var.client_name))
  aws_criticality = lower(format("%v", var.aws_criticality))
  aws_environment = lower(format("%v", var.aws_environment))
}
