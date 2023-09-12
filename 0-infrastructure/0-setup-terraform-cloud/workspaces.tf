# Project Cloudflare
resource "tfe_workspace" "cloudflare" {
  name         = "setup-cloudflare"
  organization = "lpsm-dev"
  project_id   = tfe_project.cloudflare.id
}

# Project Kubernetes
resource "tfe_workspace" "kubernetes" {
  name         = "setup-kubernetes"
  organization = "lpsm-dev"
  project_id   = tfe_project.kubernetes.id
}

# Project Scaleway
resource "tfe_workspace" "scaleway_rancher" {
  name         = "setup-rancher"
  organization = "lpsm-dev"
  project_id   = tfe_project.scaleway.id
}
