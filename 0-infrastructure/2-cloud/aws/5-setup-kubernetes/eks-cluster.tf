resource "aws_eks_cluster" "this" {
  name     = local.cluster_name
  version  = var.eks_version
  role_arn = aws_iam_role.eks_cluster_role.arn

  vpc_config {
    security_group_ids = [
      aws_security_group.eks_cluster.id,
    ]
    subnet_ids = var.eks_subnets
  }
}

resource "aws_security_group" "eks_cluster" {
  name        = "eks-cluster-sg"
  description = "Cluster security group for EKS"
  vpc_id      = var.vpc_id
  ingress {
    to_port     = 65535
    protocol    = "tcp"
    from_port   = 65535
    cidr_blocks = var.cidr_blocks
  }
}
