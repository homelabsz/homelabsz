resource "scaleway_instance_ip" "rancher" {}

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

resource "scaleway_instance_server" "rancher" {
  image             = "ubuntu-bionic"
  type              = "DEV1-S"
  name              = "rancher-server"
  security_group_id = scaleway_instance_security_group.rancher.id
  ip_id             = scaleway_instance_ip.rancher.id
  cloud_init = templatefile("${path.module}/files/rancher_server", {
    admin_password        = var.rancher_admin_password
    docker_version_server = "20.10"
    rancher_version       = var.rancher_version
    rancher_server_url    = var.rancher_server_url
  })
  root_volume {
    size_in_gb            = 20
    delete_on_termination = true
  }
  tags = ["pocs-services", "rancher", "managed-by=terraform"]
}