output "kubernetes_api_server_url" {
  value       = scaleway_k8s_cluster.pocs_services.apiserver_url
  description = "The URL of the Kubernetes API server"
}
