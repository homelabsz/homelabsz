# Project Cloudflare
resource "tfe_workspace" "lpsm_dev" {
  name         = "setup-cloudflare-lpsm-dev"
  organization = var.tf_organization
  project_id   = tfe_project.cloudflare.id
  tag_names    = ["dns"]
}

resource "tfe_workspace" "lpsm_cloud" {
  name         = "setup-cloudflare-lpsm-cloud"
  organization = var.tf_organization
  project_id   = tfe_project.cloudflare.id
  tag_names    = ["dns"]
}

# Project Scaleway
resource "tfe_workspace" "scaleway_kubernetes" {
  name         = "setup-scaleway-kubernetes"
  organization = var.tf_organization
  project_id   = tfe_project.scaleway.id
}

resource "tfe_workspace" "scaleway_rancher" {
  name         = "setup-scaleway-rancher"
  organization = var.tf_organization
  project_id   = tfe_project.scaleway.id
}

# Project AWS
resource "tfe_workspace" "aws_network" {
  name         = "setup-aws-network"
  organization = var.tf_organization
  project_id   = tfe_project.aws.id
  tag_names    = ["cloud-provider", "network"]
}

resource "tfe_workspace" "aws_dns" {
  name         = "setup-aws-dns"
  organization = var.tf_organization
  project_id   = tfe_project.aws.id
  tag_names    = ["cloud-provider", "dns"]
}

resource "tfe_workspace" "aws_rancher" {
  name         = "setup-aws-rancher"
  organization = var.tf_organization
  project_id   = tfe_project.aws.id
  tag_names    = ["cloud-provider", "instances", "rancher"]
}

resource "tfe_workspace" "aws_kubernetes" {
  name         = "setup-aws-kubernetes"
  organization = var.tf_organization
  project_id   = tfe_project.aws.id
  tag_names    = ["cloud-provider", "kubernetes"]
}
