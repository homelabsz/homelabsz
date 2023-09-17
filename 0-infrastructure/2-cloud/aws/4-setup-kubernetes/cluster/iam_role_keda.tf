data "aws_iam_policy_document" "keda_assume_role" {
  statement {
    actions = ["sts:AssumeRoleWithWebIdentity"]
    effect  = "Allow"

    condition {
      test     = "StringEquals"
      variable = "${replace(aws_iam_openid_connect_provider.eks.url, "https://", "")}:sub"
      values   = ["system:serviceaccount:kube:keda-operator"]
    }

    principals {
      identifiers = [aws_iam_openid_connect_provider.eks.arn]
      type        = "Federated"
    }
  }
}


resource "aws_iam_role" "keda" {
  name               = format("custom-role-%s-keda", local.cluster_name)
  assume_role_policy = data.aws_iam_policy_document.keda_assume_role.json
}

resource "aws_iam_policy" "keda_policy" {
  name   = format("%s-keda-policy", local.cluster_name)
  path   = "/"
  policy = file("${path.module}/files/KedaAWSSQSPolicy.json")
}

resource "aws_iam_policy_attachment" "keda_policy" {
  name       = "keda_policy"
  roles      = [aws_iam_role.keda.name]
  policy_arn = aws_iam_policy.keda_policy.arn
}
