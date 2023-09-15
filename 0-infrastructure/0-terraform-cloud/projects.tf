resource "tfe_project" "aws" {
  organization = var.organization
  name         = "aws"
}

resource "tfe_project" "cloudflare" {
  organization = var.organization
  name         = "cloudflare"
}

resource "tfe_project" "integrations" {
  organization = var.organization
  name         = "integrations"
}

resource "tfe_project" "scaleway" {
  organization = var.organization
  name         = "scaleway"
}
