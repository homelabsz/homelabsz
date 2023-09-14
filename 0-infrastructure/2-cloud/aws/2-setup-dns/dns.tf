# Route53 Private Zone
resource "aws_route53_zone" "this_private" {
  name          = "pocs-services.cloud.aws"
  comment       = "AWS Private Zone used to internal services"
  force_destroy = true
  vpc {
    vpc_id = var.vpc_id
  }
}

# Route53 Public Zone
resource "aws_route53_zone" "this" {
  name          = var.root_domain_name
  comment       = "AWS Public Zone used to external services"
  force_destroy = true
  tags = {
    Name = var.root_domain_name
  }
}
