resource "aws_route53_zone" "this" {
  name          = var.root_domain_name
  comment       = "Public AWS zone used for external services"
  force_destroy = true
  tags = {
    Name = var.root_domain_name
  }
}
