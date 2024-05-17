locals {
  # ==================================================================
  # GENERAL
  # ==================================================================
  client_name = var.client_name
  # ==================================================================
  # AWS GENERAL
  # ==================================================================
  aws_account_id         = data.aws_caller_identity.current.account_id
  aws_environment        = var.aws_environment
  aws_region             = var.aws_region
  aws_replication_region = var.aws_replication_region
  aws_sso_role           = one(data.aws_iam_roles.sso_admin.names)
  # ==================================================================
  # AWS TERRAFORM BACKEND
  # ==================================================================
  aws_buckets            = flatten([module.s3_bucket.s3_bucket_arn])
  aws_replication_bucket = "arn:aws:s3:::${local.aws_account_id}-tf-remote-state-replication/*"
}
