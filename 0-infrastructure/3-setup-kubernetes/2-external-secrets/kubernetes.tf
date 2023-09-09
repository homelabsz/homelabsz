data "scaleway_k8s_cluster" "pocs_services" {
  name = var.cluster_name
}

resource "null_resource" "kubeconfig" {
  triggers = {
    host                   = data.scaleway_k8s_cluster.pocs_services.kubeconfig[0].host
    token                  = data.scaleway_k8s_cluster.pocs_services.kubeconfig[0].token
    cluster_ca_certificate = data.scaleway_k8s_cluster.pocs_services.kubeconfig[0].cluster_ca_certificate
  }
}

resource "kubernetes_secret" "this" {
  metadata {
    name = "scaleway-secrets-accessor"
  }

  data = {
    access-key        = scaleway_iam_api_key.this.access_key
    secret-access-key = scaleway_iam_api_key.this.secret_key
  }

  type = "Opaque"
}
