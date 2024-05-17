resource "scaleway_instance_server" "srv" {
  count = var.scale
  name  = format("srv-%d", count.index)
  image = "ubuntu_jammy"
  type  = "DEV1-S"

  private_network {
    pn_id = scaleway_vpc_private_network.pn.id
  }

  user_data = {
    cloud-init = <<-EOT
    #cloud-config
    runcmd:
      - apt-get update
      - apt-get install nginx -y
      - systemctl enable --now nginx
      - hostnamectl hostname ${format("srv-%d.%s", count.index, scaleway_vpc_private_network.pn.name)}
      - echo "Hello i'm $(hostname)!" > /var/www/html/index.nginx-debian.html
      - reboot # Make sure static DHCP reservation catch up
    EOT
  }
}
