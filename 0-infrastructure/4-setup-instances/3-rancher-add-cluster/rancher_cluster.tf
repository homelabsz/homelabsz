resource "rancher2_cluster" "pocs_services" {
  name        = "pocs-services-001"
  description = "Kubernetes Scaleway Pocs Services"
}

resource "null_resource" "context" {
  triggers = {
    id = rancher2_cluster.pocs_services.id
  }
  provisioner "local-exec" {
    command     = "kubectl kc switch ${var.kubeconfig_context_name} >/dev/null 2>&1"
    interpreter = ["bash", "-c"]
  }
}

resource "null_resource" "rancher" {
  triggers = {
    id = rancher2_cluster.pocs_services.id
  }
  provisioner "local-exec" {
    command     = tolist(rancher2_cluster.pocs_services.cluster_registration_token)[0].command
    interpreter = ["bash", "-c"]
  }
  depends_on = [null_resource.context]
}
