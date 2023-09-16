output "kubernetes_cluster_name" {
  value = aws_eks_cluster.this.name
}

output "kubernetes_cluster_arn" {
  value = aws_eks_cluster.this.arn
}

output "kubernetes_api_endpoint" {
  value = aws_eks_cluster.this.endpoint
}

output "kubernetes_get_credentials_cmd" {
  value = "aws eks --region ${var.region} update-kubeconfig --name ${local.cluster_name}"
}
