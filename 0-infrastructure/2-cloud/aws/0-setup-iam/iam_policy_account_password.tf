resource "aws_iam_account_password_policy" "this" {
  minimum_password_length        = 8
  require_uppercase_characters   = true
  require_lowercase_characters   = true
  require_numbers                = true
  require_symbols                = true
  max_password_age               = 90
  allow_users_to_change_password = true
  password_reuse_prevention      = 5
}
