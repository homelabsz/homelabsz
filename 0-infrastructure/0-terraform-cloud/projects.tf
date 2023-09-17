resource "tfe_project" "aws" {
  organization = data.tfe_organization.this.name
  name         = "aws"
  lifecycle {
    prevent_destroy = true
  }
}

resource "tfe_project" "azure" {
  organization = data.tfe_organization.this.name
  name         = "azure"
  lifecycle {
    prevent_destroy = true
  }
}

resource "tfe_project" "cloudflare" {
  organization = data.tfe_organization.this.name
  name         = "cloudflare"
  lifecycle {
    prevent_destroy = true
  }
}

resource "tfe_project" "gitlab" {
  organization = data.tfe_organization.this.name
  name         = "gitlab"
  lifecycle {
    prevent_destroy = true
  }
}

resource "tfe_project" "github" {
  organization = data.tfe_organization.this.name
  name         = "github"
  lifecycle {
    prevent_destroy = true
  }
}

resource "tfe_project" "gcp" {
  organization = data.tfe_organization.this.name
  name         = "gcp"
  lifecycle {
    prevent_destroy = true
  }
}

resource "tfe_project" "integrations" {
  organization = data.tfe_organization.this.name
  name         = "integrations"
  lifecycle {
    prevent_destroy = true
  }
}

resource "tfe_project" "scaleway" {
  organization = data.tfe_organization.this.name
  name         = "scaleway"
  lifecycle {
    prevent_destroy = true
  }
}
