output "access_key" {
  value       = scaleway_iam_api_key.this.access_key
  description = "Scaleway access key value"
}

output "kubernetes_api_server_url" {
  value       = scaleway_k8s_cluster.pocs_services.apiserver_url
  description = "The URL of the Kubernetes API server"
}
