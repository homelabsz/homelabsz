resource "cloudflare_zone" "lpsm_dev" {
  zone       = "lpsm.dev"
  account_id = data.cloudflare_accounts.lpsm_dev.accounts[0].id
  jump_start = false
  plan       = "free"
  type       = "full"
}

resource "cloudflare_zone_settings_override" "lpsm_dev" {
  zone_id = cloudflare_zone.lpsm_dev.id

  settings {
    always_use_https         = "on"
    automatic_https_rewrites = "on"
    brotli                   = "on"
    browser_check            = "on"
    challenge_ttl            = 1800
    development_mode         = "off"
    email_obfuscation        = "on"
    ip_geolocation           = "on"
    opportunistic_encryption = "on"
    min_tls_version          = "1.2"
    minify {
      css  = "on"
      js   = "on"
      html = "on"
    }
    server_side_exclude = "on"
    security_header {
      enabled = true
    }
    ssl        = "full"
    visitor_ip = "on"
  }
}
