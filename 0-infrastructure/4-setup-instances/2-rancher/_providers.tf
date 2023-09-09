provider "scaleway" {
  region          = var.region
  zone            = var.zone
  project_id      = var.project_id
  organization_id = var.organization_id
}

provider "cloudflare" {
  api_token = var.cloudflare_api_token
}
