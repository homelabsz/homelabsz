provider "github" {
  token = var.github_token
}

provider "gitlab" {
  base_url = "https://gitlab.com/api/v4/"
  token    = var.gitlab_token
  insecure = false
}

provider "scaleway" {
  region          = var.region
  zone            = var.zone
  project_id      = var.project_id
  organization_id = var.organization_id
}

provider "tls" {}
