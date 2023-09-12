resource "cloudflare_record" "blog" {
  zone_id = cloudflare_zone.lpsm_dev.id
  name    = "blog"
  type    = "CNAME"
  value   = "hashnode.network"
  ttl     = 1
  proxied = false
}
