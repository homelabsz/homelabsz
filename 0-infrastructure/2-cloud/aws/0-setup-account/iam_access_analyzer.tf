resource "aws_accessanalyzer_analyzer" "default" {
  analyzer_name = local.account
  type          = "ACCOUNT"
}
