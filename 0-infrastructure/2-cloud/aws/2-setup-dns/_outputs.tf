output "acm_validation_timeout" {
  value = "It could take upwards of 15 minutes for the ACM certificate to be validated."
}

output "public_tls_cert" {
  value = aws_acm_certificate.this.arn
}

output "registrar_name_servers" {
  value = aws_route53_zone.this.name_servers
}
