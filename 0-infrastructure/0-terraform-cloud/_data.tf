data "tls_certificate" "tfc_certificate" {
  url = format("https://%s", var.tf_hostname)
}

data "tfe_organization" "this" {
  name = var.tf_organization
}
