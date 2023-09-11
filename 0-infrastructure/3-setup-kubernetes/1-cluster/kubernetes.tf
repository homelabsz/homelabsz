resource "scaleway_k8s_cluster" "pocs_services" {
  name                        = var.cluster_name
  type                        = "kapsule"
  description                 = "Scaleway Kubernetes ${var.cluster_name}"
  version                     = var.cluster_version
  cni                         = "calico"
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

resource "local_file" "kubeconfig" {
  content  = scaleway_k8s_cluster.pocs_services.kubeconfig[0].config_file
  filename = "${path.module}/kubeconfig"
}

resource "null_resource" "kubeconfig" {
  triggers = {
    timestamp = "${timestamp()}"
  }
  provisioner "local-exec" {
    command     = "chmod +x ${path.module}/files/add_kubeconfig; ${path.module}/files/add_kubeconfig"
    interpreter = ["bash", "-c"]
  }
  lifecycle {
    replace_triggered_by = [
      local_file.kubeconfig
    ]
  }
}
