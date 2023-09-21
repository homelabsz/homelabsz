resource "scaleway_k8s_cluster" "pocs_services" {
  name                        = var.cluster_name
  type                        = "kapsule"
  description                 = "Scaleway Kubernetes ${var.cluster_name}"
  version                     = var.cluster_version
  cni                         = "cilium"
  delete_additional_resources = true
  tags                        = ["managed-by=terraform"]
  autoscaler_config {
    disable_scale_down              = false
    scale_down_delay_after_add      = "5m"
    estimator                       = "binpacking"
    expander                        = "random"
    ignore_daemonsets_utilization   = true
    balance_similar_node_groups     = true
    expendable_pods_priority_cutoff = -5
  }

  auto_upgrade {
    enable                        = true
    maintenance_window_start_hour = 4
    maintenance_window_day        = "sunday"
  }

  admission_plugins = ["AlwaysPullImages"]
}
