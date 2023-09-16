resource "kubernetes_config_map" "aws_auth" {
  metadata {
      name = "aws-auth"
      namespace = "kube-system"
  }

  data = {
      mapRoles = <<YAML
- rolearn: ${aws_iam_role.eks_nodes_roles.arn}
  username: system:node:{{EC2PrivateDNSName}}
  groups:
  - system:bootstrappers
  - system:nodes
- rolearn: arn:aws:iam::836980497663:user/svc-terraform
  username: svc-terraform
  groups:
  - system:masters
YAML
  }

  depends_on = [
    aws_eks_cluster.this
  ]
}
