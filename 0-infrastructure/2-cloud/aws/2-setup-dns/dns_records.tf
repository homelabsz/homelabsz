resource "cloudflare_record" "aws_route_53" {
  zone_id = data.cloudflare_zones.this.zones[0].id
  name    = replace(var.root_domain_name, ".${var.root_domain_name}", "")
  value   = aws_route53_zone.this.name_servers[0]
  type    = "NS"
  ttl     = 120
}
