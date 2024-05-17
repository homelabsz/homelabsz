resource "aws_security_group" "eks_cluster" {
  name        = format("%s-sg", local.cluster_name)
  description = "Cluster security group for EKS"
  vpc_id      = data.aws_vpc.this.id
  ingress {
    to_port     = 65535
    protocol    = "tcp"
    from_port   = 65535
    cidr_blocks = [data.aws_vpc.this.cidr_block]
  }
  tags = {
    Name = format("%s-sg", local.cluster_name)
  }
}
