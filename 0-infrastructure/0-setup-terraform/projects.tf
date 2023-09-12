resource "tfe_project" "aws" {
  organization = "lpsm-dev"
  name         = "aws"
}

resource "tfe_project" "cloudflare" {
  organization = "lpsm-dev"
  name         = "cloudflare"
}

resource "tfe_project" "integrations" {
  organization = "lpsm-dev"
  name         = "integrations"
}

resource "tfe_project" "kubernetes" {
  organization = "lpsm-dev"
  name         = "kubernetes"
}

resource "tfe_project" "scaleway" {
  organization = "lpsm-dev"
  name         = "scaleway"
}
