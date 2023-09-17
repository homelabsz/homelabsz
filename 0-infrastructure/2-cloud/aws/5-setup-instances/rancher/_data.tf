data "aws_vpc" "this" {
  filter {
    name   = "tag:Name"
    values = [var.vpc_name]
  }
}

data "aws_subnet" "this" {
  vpc_id = data.aws_vpc.this.id
  filter {
    name   = "tag:Name"
    values = [var.subnet_name]
  }
}

data "aws_route53_zone" "this" {
  name         = var.dns_zone
  private_zone = false
}

data "aws_ami" "ubuntu" {
  most_recent = true
  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
  owners = ["099720109477"]
}

data "http" "my_ip" {
  url = "http://ipv4.icanhazip.com"
}
