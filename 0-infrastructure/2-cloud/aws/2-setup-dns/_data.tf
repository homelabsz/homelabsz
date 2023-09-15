data "cloudflare_zones" "this" {
  filter {
    name = var.root_domain_name
  }
}
