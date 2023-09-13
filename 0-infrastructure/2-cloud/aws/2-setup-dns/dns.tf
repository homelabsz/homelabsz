# Route53 Private Zone
resource "aws_route53_zone" "nupocs_private" {
  name          = "pocs-services.cloud.aws"
  comment       = "AWS Private Zone used to internal services"
  force_destroy = true
  vpc {
    vpc_id = var.vpc_id
  }
}

# Route53 Public Zone
resource "aws_route53_zone" "nupocs" {
  name          = var.root_domain_name
  comment       = "AWS Public Zone used to external services"
  force_destroy = true
  tags = {
    Name = var.root_domain_name
  }
}

resource "aws_route53domains_registered_domain" "nupocs" {
  domain_name = var.root_domain_name

  dynamic "name_server" {
    for_each = sort(aws_route53_zone.nupocs.name_servers)
    content {
      name = name_server.value
    }
  }
}
