resource "scaleway_k8s_pool" "pocs_services" {
  cluster_id  = scaleway_k8s_cluster.pocs_services.id
  name        = var.cluster_name
  node_type   = "DEV1-M"
  size        = 2
  autoscaling = true
  autohealing = true
  min_size    = 2
  max_size    = 4
  tags        = ["managed-by=terraform", "ssh-enabled=true"]
}
