resource "cloudflare_record" "hashnode_blog" {
  zone_id = data.cloudflare_zone.this.id
  name    = "blog"
  type    = "CNAME"
  value   = "hashnode.network"
  ttl     = 1
  proxied = false
}
