resource "tfe_project" "aws" {
  organization = var.tf_organization
  name         = "aws"
}

resource "tfe_project" "cloudflare" {
  organization = var.tf_organization
  name         = "cloudflare"
}

resource "tfe_project" "integrations" {
  organization = var.tf_organization
  name         = "integrations"
}

resource "tfe_project" "scaleway" {
  organization = var.tf_organization
  name         = "scaleway"
}
