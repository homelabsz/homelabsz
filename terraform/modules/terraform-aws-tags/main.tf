resource "time_static" "current" {}

locals {
  client_name     = lower(format("%v", var.client_name))
  aws_account_id  = data.aws_caller_identity.current.account_id
  aws_criticality = lower(format("%v", var.aws_criticality))
  aws_environment = lower(format("%v", var.aws_environment))
  aws_region      = data.aws_region.current.name
}
