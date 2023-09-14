
resource "aws_route53_record" "nupocs" {
  allow_overwrite = true
  name            = tolist(aws_acm_certificate.nupocs.domain_validation_options)[0].resource_record_name
  records         = [tolist(aws_acm_certificate.nupocs.domain_validation_options)[0].resource_record_value]
  type            = tolist(aws_acm_certificate.nupocs.domain_validation_options)[0].resource_record_type
  zone_id         = aws_route53_zone.nupocs.zone_id
  ttl             = 60
}