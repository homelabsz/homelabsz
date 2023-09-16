resource "aws_kms_key" "eks" {
  description = "KMS Key ${local.cluster_name}"
}

resource "aws_kms_alias" "eks" {
  name          = format("alias/%s", local.cluster_name)
  target_key_id = aws_kms_key.eks.key_id
}
