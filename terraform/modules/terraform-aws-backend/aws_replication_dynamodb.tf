# ==================================================================
# AWS KMS - REPLICATION DYNAMODB
# ==================================================================

module "kms_dynamodb_replication" {
  source  = "terraform-aws-modules/kms/aws"
  version = "~> 2.2"
  providers = {
    aws = aws.replication
  }

  description             = "Set up the KMS that will be used in the DynamoDB lock of the Terraform backend"
  deletion_window_in_days = 7
  enable_key_rotation     = true
  enable_default_policy   = true
  aliases                 = ["tf-remote-state/dynamodb-lock-replication"]
}
