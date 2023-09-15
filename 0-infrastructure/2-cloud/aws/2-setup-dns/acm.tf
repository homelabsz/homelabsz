module "acm" {
  source  = "registry.terraform.io/terraform-aws-modules/acm/aws"
  version = "~> 4.3"

  domain_name               = "*.${aws_route53_zone.this.name}"
  zone_id                   = aws_route53_zone.this.id
  subject_alternative_names = [aws_route53_zone.this.name]
}
