resource "aws_securityhub_account" "main" {
  enable_default_standards = false
  auto_enable_controls     = false
}

resource "aws_securityhub_finding_aggregator" "main" {
  linking_mode = "ALL_REGIONS"
  depends_on   = [aws_securityhub_account.main]
}
