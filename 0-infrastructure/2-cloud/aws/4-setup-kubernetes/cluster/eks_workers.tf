resource "aws_eks_node_group" "this" {
  cluster_name    = local.cluster_name
  node_group_name = format("%s-node-group", aws_eks_cluster.this.name)
  node_role_arn   = aws_iam_role.eks_nodes_roles.arn
  disk_size       = 60
  subnet_ids      = data.aws_subnets.this.ids
  scaling_config {
    desired_size = lookup(var.auto_scale_options, "desired")
    max_size     = lookup(var.auto_scale_options, "max")
    min_size     = lookup(var.auto_scale_options, "min")
  }
  instance_types = var.nodes_instances_sizes
  depends_on = [
    aws_eks_cluster.this,
  ]
  tags = {
    Name = format("%s-node-group", aws_eks_cluster.this.name)
  }
}
