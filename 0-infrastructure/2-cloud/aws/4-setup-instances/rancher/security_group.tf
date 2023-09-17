resource "aws_security_group" "rancher" {
  name        = "ec2-rancher-sg"
  description = "Default security group for Rancher instance"
  vpc_id      = data.aws_vpc.this.id

  tags = {
    Name = "ec2-rancher-sg"
  }

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_security_group_rule" "allow_ssh" {
  security_group_id = aws_security_group.rancher.id
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  cidr_blocks       = ["${chomp(data.http.my_ip.response_body)}/32"]

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_security_group_rule" "allow_http" {
  security_group_id = aws_security_group.rancher.id
  type              = "ingress"
  from_port         = 80
  to_port           = 80
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_security_group_rule" "allow_https" {
  security_group_id = aws_security_group.rancher.id
  type              = "ingress"
  from_port         = 443
  to_port           = 443
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]

  lifecycle {
    create_before_destroy = true
  }
}
