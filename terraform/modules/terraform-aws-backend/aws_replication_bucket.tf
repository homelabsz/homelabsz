# ==================================================================
# AWS KMS - REPLICATION BUCKET
# ==================================================================

module "kms_replication_bucket" {
  source  = "terraform-aws-modules/kms/aws"
  version = "~> 2.2"
  providers = {
    aws = aws.replication
  }

  description             = "Set up the KMS that will be used in the S3 replication bucket of the Terraform backend"
  deletion_window_in_days = 30
  enable_key_rotation     = true
  enable_default_policy   = true
  policy                  = data.aws_iam_policy_document.bucket_encryption.json
  aliases                 = ["tf-remote-state/s3-bucket-replication"]
}

# ==================================================================
# AWS S3 BUCKET - REPLICATION BUCKET
# ==================================================================

module "s3_bucket_replication" {
  source  = "terraform-aws-modules/s3-bucket/aws"
  version = "~> 4.1"
  providers = {
    aws = aws.replication
  }

  bucket                                = "${local.aws_account_id}-tf-remote-state-replication"
  acl                                   = "private"
  force_destroy                         = true
  control_object_ownership              = true
  object_ownership                      = "ObjectWriter"
  attach_deny_insecure_transport_policy = true
  attach_policy                         = true
  policy                                = data.aws_iam_policy_document.replication_bucket_tf_remote_state.json
  versioning = {
    enabled    = true
    mfa_delete = false
  }
  server_side_encryption_configuration = {
    rule = {
      apply_server_side_encryption_by_default = {
        sse_algorithm     = "aws:kms"
        kms_master_key_id = module.kms_replication_bucket.key_arn
      }
    }
  }
  lifecycle_rule = [
    {
      id      = "main"
      enabled = true
      abort_incomplete_multipart_upload = {
        days_after_initiation = "7"
      }
      expiration = {
        days = 730
      }
      transition = {
        days          = 90
        storage_class = "STANDARD_IA"
      }
      transition = {
        days          = 365
        storage_class = "GLACIER"
      }
      noncurrent_version_transition = {
        noncurrent_days = 90
        storage_class   = "STANDARD_IA"
      }
      noncurrent_version_transition = {
        noncurrent_days = 365
        storage_class   = "GLACIER"
      }
      noncurrent_version_expiration = {
        noncurrent_days = 730
      }
    }
  ]
}
