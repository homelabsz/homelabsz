resource "aws_acm_certificate" "this" {
  domain_name = "*.${var.root_domain_name}"
  subject_alternative_names = [
    "*.${var.root_domain_name}",
    var.root_domain_name
  ]
  validation_method = "DNS"
  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_acm_certificate_validation" "this" {
  certificate_arn         = aws_acm_certificate.this.arn
  validation_record_fqdns = [aws_route53_record.this.fqdn]
  timeouts {
    create = "15m"
  }
}
