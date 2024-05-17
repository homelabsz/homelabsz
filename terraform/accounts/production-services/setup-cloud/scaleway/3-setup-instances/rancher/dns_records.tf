resource "cloudflare_record" "rancher" {
  name    = "rancher"
  type    = "A"
  zone_id = data.cloudflare_zone.this.id
  value   = scaleway_instance_server.rancher.public_ip
  ttl     = 1
  proxied = true
}
