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

  encryption_config {
    provider {
      key_arn = aws_kms_key.eks.arn
    }
    resources = ["secrets"]
  }

  enabled_cluster_log_types = [
    "api", "audit", "authenticator", "controllerManager", "scheduler"
  ]

  tags = {
    Name = local.cluster_name
  }
}

resource "aws_security_group" "eks_cluster" {
  name        = format("%s-sg", local.cluster_name)
  description = "Cluster security group for EKS"
  vpc_id      = var.vpc_id
  ingress {
    to_port     = 65535
    protocol    = "tcp"
    from_port   = 65535
    cidr_blocks = var.cidr_blocks
  }
  tags = {
    Name = format("%s-sg", local.cluster_name)
  }
}
