resource "aws_route53_record" "this" {
  allow_overwrite = true
  name            = tolist(aws_acm_certificate.this.domain_validation_options)[0].resource_record_name
  records         = [tolist(aws_acm_certificate.this.domain_validation_options)[0].resource_record_value]
  type            = tolist(aws_acm_certificate.this.domain_validation_options)[0].resource_record_type
  zone_id         = aws_route53_zone.this.zone_id
  ttl             = 60
}
