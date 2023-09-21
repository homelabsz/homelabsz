resource "scaleway_instance_security_group" "rancher" {
  name                    = "rancher-server-allow-all"
  description             = "security group for rancher server"
  inbound_default_policy  = "drop"
  outbound_default_policy = "accept"

  dynamic "inbound_rule" {
    for_each = ["22", "443", "80"]
    content {
      action   = "accept"
      port     = inbound_rule.value
      protocol = "TCP"
    }
  }
}
