output "cloudflare_zone" {
  value = {
    zone = {
      id     = cloudflare_zone.lpsm_dev.id
      status = cloudflare_zone.lpsm_dev.status
    }
  }
  description = "Output Cloudflare Zone information"
}
