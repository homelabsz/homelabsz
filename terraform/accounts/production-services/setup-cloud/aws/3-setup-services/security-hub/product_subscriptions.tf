resource "aws_securityhub_product_subscription" "aqua_security_kube_bench" {
  product_arn = "arn:aws:securityhub:${var.region}::product/aqua-security/kube-bench"
  depends_on  = [aws_securityhub_account.main]
}
