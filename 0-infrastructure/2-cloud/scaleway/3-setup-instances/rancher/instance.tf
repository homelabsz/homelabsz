resource "scaleway_instance_ip" "rancher" {}

resource "scaleway_instance_server" "rancher" {
  image             = "ubuntu-bionic"
  type              = "DEV1-S"
  name              = "rancher-server"
  security_group_id = scaleway_instance_security_group.rancher.id
  ip_id             = scaleway_instance_ip.rancher.id
  cloud_init = templatefile("${path.module}/files/rancher_server", {
    admin_password        = var.rancher_admin_password
    docker_version_server = "20.10"
    scw_access_key        = var.access_key
    scw_secret_key        = var.secret_key
    scw_organization_id   = var.organization_id
    scw_project_id        = var.project_id
    rancher_version       = var.rancher_version
    rancher_server_url    = var.rancher_server_url
  })
  root_volume {
    size_in_gb            = 15
    delete_on_termination = true
  }
  tags = ["pocs-services", "rancher", "managed-by=terraform"]
}
