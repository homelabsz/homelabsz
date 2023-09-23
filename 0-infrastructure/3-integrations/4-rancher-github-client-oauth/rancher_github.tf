resource "rancher2_auth_config_github" "github" {
  client_id             = var.github_client_id
  client_secret         = var.github_client_secret
  access_mode           = "restricted"
  allowed_principal_ids = var.github_allowed_principal_ids
  enabled               = true
  tls                   = true
}
