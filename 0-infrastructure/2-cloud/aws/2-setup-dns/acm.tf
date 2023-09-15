module "acm" {
  source  = "registry.terraform.io/terraform-aws-modules/acm/aws"
  version = "~> 4.3"

  certificate_transparency_logging_preference = true
  create_certificate                          = true
  create_route53_records                      = true
  dns_ttl                                     = 60
  domain_name                                 = "*.${aws_route53_zone.this.name}"
  subject_alternative_names                   = [aws_route53_zone.this.name]
  validate_certificate                        = true
  validation_method                           = "DNS"
  validation_timeout                          = "15m"
  wait_for_validation                         = true
  zone_id                                     = aws_route53_zone.this.id
}
