data "aws_vpc" "this" {
  filter {
    name   = "tag:Name"
    values = var.eks_vpc_name
  }
}

data "aws_subnets" "this" {
  filter {
    name   = "tag:Name"
    values = var.eks_subnet_names
  }
}

data "aws_eks_cluster_auth" "this" {
  name = aws_eks_cluster.this.id
}
