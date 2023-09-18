resource "aws_eks_addon" "csi_driver" {
  cluster_name = aws_eks_cluster.this.name
  addon_name   = "aws-ebs-csi-driver"

  addon_version               = "v1.17.0-eksbuild.1"
  resolve_conflicts_on_create = "OVERWRITE"
  resolve_conflicts_on_update = "PRESERVE"

  depends_on = [
    aws_eks_node_group.this,
    kubernetes_config_map_v1_data.aws_auth
  ]
}
