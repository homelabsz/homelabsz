data "aws_iam_policy_document" "kube_bench_assume_role" {
  statement {
    actions = ["sts:AssumeRoleWithWebIdentity"]
    effect  = "Allow"

    condition {
      test     = "StringEquals"
      variable = "${replace(aws_iam_openid_connect_provider.eks.url, "https://", "")}:sub"
      values   = ["system:serviceaccount:kube-bench:kube-bench"]
    }

    principals {
      identifiers = [aws_iam_openid_connect_provider.eks.arn]
      type        = "Federated"
    }
  }
}

resource "aws_iam_role" "kube_bench" {
  name               = format("custom-role-%s-kube-bench", local.cluster_name)
  assume_role_policy = data.aws_iam_policy_document.kube_bench_assume_role.json
  tags = {
    "ServiceAccountName"      = "kube-bench"
    "ServiceAccountNameSpace" = "kube-bench"
  }
}

resource "aws_iam_policy" "kube_bench_policy" {
  name   = format("%s-kube-bench-policy", local.cluster_name)
  path   = "/"
  policy = templatefile("${path.module}/files/KubeBenchAWSSecurityHub.json", { REGION = var.region })
}

resource "aws_iam_policy_attachment" "kube_bench_policy" {
  name       = "kube_bench_policy"
  roles      = [aws_iam_role.keda.name]
  policy_arn = aws_iam_policy.keda_policy.arn
}
