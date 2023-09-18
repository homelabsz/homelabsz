data "tls_certificate" "tfc_certificate" {
  url = format("https://%s", var.tfc_hostname)
}

data "tfe_organization" "this" {
  name = var.tfc_organization
}
