# ==================================================================
# DATAS - AWS
# ==================================================================

data "aws_caller_identity" "current" {}
data "aws_region" "current" {}

data "aws_iam_roles" "sso_admin" {
  name_regex  = "AWSReservedSSO_AWSAdministratorAccess_*"
  path_prefix = "/aws-reserved/sso.amazonaws.com/"
}

# ==================================================================
# DATAS - AWS IAM REPLICATION
# ==================================================================

data "aws_iam_policy_document" "replication_bucket" {
  version = "2012-10-17"
  statement {
    effect = "Allow"
    actions = [
      "s3:GetReplicationConfiguration",
      "s3:ListBucket"
    ]
    resources = local.aws_buckets
  }
  statement {
    effect = "Allow"
    actions = [
      "s3:GetObjectVersion",
      "s3:GetObjectVersionAcl",
      "s3:GetObjectVersionForReplication",
      "s3:GetObjectLegalHold",
      "s3:GetObjectRetention",
      "s3:GetObjectVersionTagging"
    ]
    resources = [
      for bucket in local.aws_buckets :
      "${bucket}/*"
    ]
  }
  statement {
    effect = "Allow"
    actions = [
      "s3:ReplicateObject",
      "s3:ReplicateDelete",
      "s3:ReplicateTags",
      "s3:GetObjectVersionTagging",
      "s3:ObjectOwnerOverrideToBucketOwner"
    ]
    resources = [local.aws_replication_bucket]
    condition {
      test     = "StringLikeIfExists"
      variable = "s3:x-amz-server-side-encryption"
      values = [
        "aws:kms",
        "AES256"
      ]
    }
  }
}

data "aws_iam_policy_document" "replication_bucket_assume_role" {
  version = "2012-10-17"
  statement {
    effect  = "Allow"
    actions = ["sts:AssumeRole"]
    principals {
      type        = "Service"
      identifiers = ["s3.amazonaws.com"]
    }
  }
}

data "aws_iam_policy_document" "replication_bucket_tf_remote_state" {
  statement {
    sid    = "EnforcedTLS"
    effect = "Deny"
    principals {
      type        = "*"
      identifiers = ["*"]
    }
    actions = ["s3:*"]
    resources = [
      "${module.s3_bucket_replication.s3_bucket_arn}",
      "${module.s3_bucket_replication.s3_bucket_arn}/*"
    ]
    condition {
      test     = "Bool"
      variable = "aws:SecureTransport"
      values   = ["false"]
    }
  }
  statement {
    sid    = "RootAccess"
    effect = "Allow"
    principals {
      type = "AWS"
      identifiers = [
        "arn:aws:iam::${local.aws_account_id}:root"
      ]
    }
    actions = ["s3:*"]
    resources = [
      "${module.s3_bucket_replication.s3_bucket_arn}",
      "${module.s3_bucket_replication.s3_bucket_arn}/*"
    ]
  }
}

# ==================================================================
# DATAS - AWS IAM S3
# ==================================================================

data "aws_iam_policy_document" "bucket_tf_remote_state" {
  statement {
    sid    = "EnforcedTLS"
    effect = "Deny"
    principals {
      type        = "*"
      identifiers = ["*"]
    }
    actions = ["s3:*"]
    resources = [
      "${module.s3_bucket.s3_bucket_arn}",
      "${module.s3_bucket.s3_bucket_arn}/*"
    ]
    condition {
      test     = "Bool"
      variable = "aws:SecureTransport"
      values   = ["false"]
    }
  }
  statement {
    sid    = "RootAccess"
    effect = "Allow"
    principals {
      type = "AWS"
      identifiers = [
        "arn:aws:iam::${local.aws_account_id}:root"
      ]
    }
    actions = ["s3:*"]
    resources = [
      "${module.s3_bucket.s3_bucket_arn}",
      "${module.s3_bucket.s3_bucket_arn}/*"
    ]
  }
}

data "aws_iam_policy_document" "bucket_encryption" {
  statement {
    sid    = "Allow management access of the key"
    effect = "Allow"
    principals {
      type = "AWS"
      identifiers = concat(
        [
          "arn:aws:iam::${local.aws_account_id}:root"
        ]
      )
    }
    actions   = ["kms:*"]
    resources = ["*"]
  }
  statement {
    sid    = "Allow key decryption to STS bucket replication roles"
    effect = "Allow"
    principals {
      type = "AWS"
      identifiers = [
        "arn:aws:sts::${local.aws_account_id}:assumed-role/custom-role-tf-remote-state-replication-bucket/s3-replication"
      ]
    }
    actions   = ["kms:Decrypt*"]
    resources = ["*"]
  }
}
