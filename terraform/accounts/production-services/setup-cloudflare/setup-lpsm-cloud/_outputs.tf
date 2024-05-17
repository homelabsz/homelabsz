output "cloudflare_zone" {
  value = {
    zone = {
      id     = data.cloudflare_zone.this.id
      status = data.cloudflare_zone.this.status
    }
  }
  description = "Output Cloudflare Zone information"
}
