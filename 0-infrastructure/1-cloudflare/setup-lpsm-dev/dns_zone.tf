resource "cloudflare_zone" "this" {
  zone       = var.root_domain_name
  account_id = data.cloudflare_accounts.this.accounts[0].id
  jump_start = false
  plan       = "free"
  type       = "full"
}

resource "cloudflare_zone_settings_override" "this" {
  zone_id = cloudflare_zone.this.id

  settings {
    always_online            = "off"
    always_use_https         = "on"
    automatic_https_rewrites = "on"
    brotli                   = "on"
    browser_cache_ttl        = 1800
    browser_check            = "on"
    cache_level              = "aggressive"
    challenge_ttl            = 1800
    development_mode         = "off"
    email_obfuscation        = "on"
    hotlink_protection       = "on"
    ip_geolocation           = "on"
    opportunistic_encryption = "on"
    min_tls_version          = "1.2"
    minify {
      css  = "off"
      js   = "off"
      html = "off"
    }
    server_side_exclude = "on"
    security_header {
      enabled            = true
      include_subdomains = true
      max_age            = 15552000
      nosniff            = true
      preload            = true
    }
    ssl = "full"
  }
}
