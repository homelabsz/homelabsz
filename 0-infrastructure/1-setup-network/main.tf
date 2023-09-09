# Private Network creation
resource "scaleway_vpc_private_network" "scaleway" {
  name = "pocs-private-network"
}

# DHCP
resource "scaleway_vpc_public_gateway_dhcp" "scaleway" {
  subnet             = "192.168.1.0/24"
  push_default_route = true
}

# Public Gateway
resource "scaleway_vpc_public_gateway_ip" "scaleway" {}

resource "scaleway_vpc_public_gateway" "scaleway" {
  name  = "pcs-public-gateway"
  type  = "VPC-GW-S"
  ip_id = scaleway_vpc_public_gateway_ip.scaleway.id
}

# Routing
resource "scaleway_vpc_gateway_network" "scaleway" {
  gateway_id         = scaleway_vpc_public_gateway.scaleway.id
  private_network_id = scaleway_vpc_private_network.scaleway.id
  dhcp_id            = scaleway_vpc_public_gateway_dhcp.scaleway.id
  cleanup_dhcp       = true
  enable_masquerade  = true
  depends_on         = [scaleway_vpc_public_gateway.scaleway, scaleway_vpc_public_gateway_ip.scaleway, scaleway_vpc_private_network.scaleway]
}

# Forwarding rules
resource "scaleway_vpc_public_gateway_pat_rule" "webserver-http" {
  gateway_id   = scaleway_vpc_public_gateway.scaleway.id
  private_ip   = scaleway_vpc_public_gateway_dhcp.scaleway.address
  private_port = 8080
  public_port  = 80
  protocol     = "both"
  depends_on   = [scaleway_vpc_public_gateway.scaleway, scaleway_vpc_gateway_network.scaleway, scaleway_vpc_private_network.scaleway]
}

resource "scaleway_vpc_public_gateway_pat_rule" "webserver-ssh" {
  gateway_id   = scaleway_vpc_public_gateway.scaleway.id
  private_ip   = scaleway_vpc_public_gateway_dhcp.scaleway.address
  private_port = 22
  public_port  = 2221
  protocol     = "both"
  depends_on   = [scaleway_vpc_public_gateway.scaleway, scaleway_vpc_gateway_network.scaleway, scaleway_vpc_private_network.scaleway]
}
