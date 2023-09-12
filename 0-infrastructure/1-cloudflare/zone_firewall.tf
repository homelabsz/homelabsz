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
  rules {
    action      = "block"
    description = "Bad bots filter"
    enabled     = true
    expression  = "(http.user_agent contains \"Yandex\") \nor (http.user_agent contains \"muckrack\") \nor (http.user_agent contains \"Qwantify\") \nor (http.user_agent contains \"Sogou\") \nor (http.user_agent contains \"BUbiNG\") \nor (http.user_agent contains \"knowledge\") \nor (http.user_agent contains \"CFNetwork\") \nor (http.user_agent contains \"Scrapy\") \nor (http.user_agent contains \"SemrushBot\") \nor (http.user_agent contains \"AhrefsBot\") \nor (http.user_agent contains \"Baiduspider\") \nor (http.user_agent contains \"python-requests\") \nor ((http.user_agent contains \"crawl\") \nor (http.user_agent contains \"Crawl\") \nor (http.user_agent contains \"bot\" and not http.user_agent contains \"bingbot\" and not http.user_agent contains \"Google\" and not http.user_agent contains \"Twitter\")\nor (http.user_agent contains \"Bot\" and not http.user_agent contains \"Google\") \nor (http.user_agent contains \"Spider\") \nor (http.user_agent contains \"spider\") \nand not cf.client.bot)"
  }
}
