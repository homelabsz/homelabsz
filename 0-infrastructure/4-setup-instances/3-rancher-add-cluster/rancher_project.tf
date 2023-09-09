resource "rancher2_project" "homelad" {
  name             = "Homelab"
  cluster_id       = rancher2_cluster.pocs_services.id
  wait_for_cluster = true
}

resource "rancher2_project" "devops" {
  name             = "DevOps"
  cluster_id       = rancher2_cluster.pocs_services.id
  wait_for_cluster = true
}

resource "rancher2_project" "monitoring" {
  name             = "Monitoring"
  cluster_id       = rancher2_cluster.pocs_services.id
  wait_for_cluster = true
}
