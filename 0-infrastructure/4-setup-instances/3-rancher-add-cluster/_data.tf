data "rancher2_project" "system" {
  cluster_id       = rancher2_cluster.pocs_services.id
  name = "System"
}
