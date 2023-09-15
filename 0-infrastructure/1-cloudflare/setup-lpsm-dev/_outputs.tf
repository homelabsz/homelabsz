output "cloudflare_zone" {
  value = {
    zone = {
      id     = cloudflare_zone.this.id
      status = cloudflare_zone.this.status
    }
  }
  description = "Output Cloudflare Zone information"
}
