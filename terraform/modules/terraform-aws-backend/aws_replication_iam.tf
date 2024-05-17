# ==================================================================
# AWS IAM - ROLE
# ==================================================================

resource "aws_iam_role" "replication_bucket" {
  name               = "custom-role-tf-remote-state-replication-bucket"
  assume_role_policy = data.aws_iam_policy_document.replication_bucket_assume_role.json
}

# ==================================================================
# AWS IAM - POLICY
# ==================================================================

resource "aws_iam_policy" "replication_bucket" {
  name   = "custom-policy-tf-remote-state-replication-bucket"
  policy = data.aws_iam_policy_document.replication_bucket.json
}

# ==================================================================
# AWS IAM - ATTACHMENT POLICY TO ROLE
# ==================================================================

resource "aws_iam_role_policy_attachment" "replication_bucket" {
  policy_arn = aws_iam_policy.replication_bucket.arn
  role       = aws_iam_role.replication_bucket.name
}
