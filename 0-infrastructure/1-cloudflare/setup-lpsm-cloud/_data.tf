data "cloudflare_zone" "this" {
  name = var.root_domain_name
}
