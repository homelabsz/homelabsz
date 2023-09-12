resource "cloudflare_ruleset" "block" {
  kind        = "zone"
  name        = "block"
  description = "Firewall rule to block"
  phase       = "http_request_firewall_custom"
  zone_id     = cloudflare_zone.lpsm_dev.id
  rules {
    action      = "block"
    description = "Expression to block countries"
    enabled     = true
    expression  = "(ip.geoip.country in {\"CN\" \"IN\" \"KP\" \"RU\"})"
  }
  rules {
    action      = "block"
    description = "Expression to block bots determined by CF"
    enabled     = true
    expression  = "(cf.client.bot) or (cf.threat_score gt 14)"
  }
}
