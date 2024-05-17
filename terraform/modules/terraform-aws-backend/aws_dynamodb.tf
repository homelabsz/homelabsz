# ==================================================================
# AWS KMS - TF STATE LOCK
# ==================================================================

module "kms_dynamodb" {
  source  = "terraform-aws-modules/kms/aws"
  version = "~> 2.2"

  description             = "Set up the KMS that will be used in the DynamoDB replication lock of the Terraform backend"
  deletion_window_in_days = 7
  enable_key_rotation     = true
  enable_default_policy   = true
  aliases                 = ["tf-remote-state/dynamodb-lock"]
}

# ==================================================================
# AWS DYNAMODB - TF STATE LOCK
# ==================================================================

resource "aws_dynamodb_table" "terraform" {
  name         = "${local.aws_account_id}-tf-remote-state-lock"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"
  attribute {
    name = "LockID"
    type = "S"
  }
  server_side_encryption {
    enabled     = true
    kms_key_arn = module.kms_dynamodb.key_arn
  }
  point_in_time_recovery {
    enabled = true
  }
  replica {
    region_name = local.aws_replication_region
    kms_key_arn = module.kms_dynamodb_replication.key_arn
  }
  stream_enabled   = true
  stream_view_type = "NEW_AND_OLD_IMAGES"
  lifecycle {
    ignore_changes = [
      read_capacity,
      write_capacity,
    ]
  }
}
