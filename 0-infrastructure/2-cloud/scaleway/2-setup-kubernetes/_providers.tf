provider "scaleway" {
  access_key      = var.access_key
  secret_key      = var.secret_key
  project_id      = var.project_id
  organization_id = var.organization_id
  region          = var.region
  zone            = var.zone
}

provider "kubernetes" {
  host  = null_resource.kubeconfig.triggers.host
  token = null_resource.kubeconfig.triggers.token
  cluster_ca_certificate = base64decode(
    null_resource.kubeconfig.triggers.cluster_ca_certificate
  )
}
