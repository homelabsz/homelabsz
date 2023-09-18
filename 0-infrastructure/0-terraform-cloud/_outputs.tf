output "tfc_aws_policy_arn" {
  value       = aws_iam_policy.tfc_policy.arn
  description = "The ARN of the AWS IAM policy"
}

output "tfc_aws_role_arn" {
  description = "ARN for trust relationship role"
  value       = aws_iam_role.tfc_role.arn
}

output "tfc_aws_role_openid_claims" {
  description = "OpenID Claims for trust relationship"
  value       = one(jsondecode(aws_iam_role.tfc_role.assume_role_policy).Statement).Condition
}
