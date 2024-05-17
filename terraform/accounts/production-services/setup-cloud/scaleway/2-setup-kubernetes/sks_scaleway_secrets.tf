resource "kubernetes_secret" "this" {
  metadata {
    name      = "scaleway-secrets-accessor"
    namespace = "default"
  }

  data = {
    access-key        = scaleway_iam_api_key.this.access_key
    secret-access-key = scaleway_iam_api_key.this.secret_key
  }

  type = "Opaque"
}
