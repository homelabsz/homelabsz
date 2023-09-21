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
  depends_on = [local_file.kubeconfig]
}
