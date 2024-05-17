resource "time_static" "current" {}

locals {
  client_name = lower(format("%v", var.client_name))
  criticality = lower(format("%v", var.criticality))
  environment = lower(format("%v", var.environment))
}
