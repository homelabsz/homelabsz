# Private Network creation
resource "scaleway_vpc_private_network" "this" {
  name = "pocs-private-network"
}

# Public Gateway
resource "scaleway_vpc_public_gateway_ip" "this" {}

resource "scaleway_vpc_public_gateway_dhcp" "this" {
  subnet             = "192.168.1.0/24"
  address            = "192.168.0.1"
  pool_low           = "192.168.0.2"
  pool_high          = "192.168.0.50"
  enable_dynamic     = true
  push_default_route = true
  push_dns_server    = true
  dns_local_name     = scaleway_vpc_private_network.this.name
}

resource "scaleway_vpc_public_gateway" "this" {
  name            = "pcs-public-gateway"
  type            = "VPC-GW-S"
  bastion_enabled = true
  ip_id           = scaleway_vpc_public_gateway_ip.this.id
}

# Routing
resource "scaleway_vpc_gateway_network" "this" {
  gateway_id         = scaleway_vpc_public_gateway.this.id
  private_network_id = scaleway_vpc_private_network.this.id
  dhcp_id            = scaleway_vpc_public_gateway_dhcp.this.id
  cleanup_dhcp       = true
  enable_masquerade  = true
  depends_on         = [scaleway_vpc_public_gateway.this, scaleway_vpc_private_network.this]
}
