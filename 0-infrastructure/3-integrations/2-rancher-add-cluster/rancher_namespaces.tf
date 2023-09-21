# DevOps
resource "rancher2_namespace" "gitlab_runner" {
  name       = "gitlab-runner"
  project_id = rancher2_project.devops.id
}

resource "rancher2_namespace" "reloader" {
  name       = "reloader"
  project_id = rancher2_project.devops.id
}

resource "rancher2_namespace" "kubernetes_replicator" {
  name       = "kubernetes-replicator"
  project_id = rancher2_project.devops.id
}

resource "rancher2_namespace" "sonarqube" {
  name       = "sonarqube"
  project_id = rancher2_project.devops.id
}

# GitOps
resource "rancher2_namespace" "argocd" {
  name       = "argocd"
  project_id = rancher2_project.gitops.id
}

# Homelab
resource "rancher2_namespace" "demo" {
  name       = "demo"
  project_id = rancher2_project.homelab.id
}

# Monitoring
resource "rancher2_namespace" "monitoring" {
  name       = "monitoring"
  project_id = rancher2_project.monitoring.id
}

# System
resource "rancher2_namespace" "external_dns" {
  name       = "external-dns"
  project_id = data.rancher2_project.system.id
}

resource "rancher2_namespace" "external_secrets" {
  name       = "external-secrets"
  project_id = data.rancher2_project.system.id
}

resource "rancher2_namespace" "origin_ca_issuer" {
  name       = "origin-ca-issuer"
  project_id = data.rancher2_project.system.id
}
