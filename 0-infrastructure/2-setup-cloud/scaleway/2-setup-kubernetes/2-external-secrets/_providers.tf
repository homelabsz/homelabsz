provider "scaleway" {
  region          = var.region
  zone            = var.zone
  project_id      = var.project_id
  organization_id = var.organization_id
}

provider "kubernetes" {
  host  = null_resource.kubeconfig.triggers.host
  token = null_resource.kubeconfig.triggers.token
  cluster_ca_certificate = base64decode(
    null_resource.kubeconfig.triggers.cluster_ca_certificate
  )
}
