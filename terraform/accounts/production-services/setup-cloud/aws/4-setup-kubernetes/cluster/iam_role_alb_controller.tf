data "aws_iam_policy_document" "aws_load_balancer_controller_assume_role" {
  statement {
    actions = ["sts:AssumeRoleWithWebIdentity"]
    effect  = "Allow"

    condition {
      test     = "StringEquals"
      variable = "${replace(aws_iam_openid_connect_provider.eks.url, "https://", "")}:sub"
      values   = ["system:serviceaccount:kube-system:aws-load-balancer-controller"]
    }

    principals {
      identifiers = [aws_iam_openid_connect_provider.eks.arn]
      type        = "Federated"
    }
  }
}

resource "aws_iam_role" "alb_controller" {
  name               = format("custom-role-%s-alb-controller", local.cluster_name)
  assume_role_policy = data.aws_iam_policy_document.aws_load_balancer_controller_assume_role.json
}

resource "aws_iam_policy" "aws_load_balancer_controller_policy" {
  name   = format("%s-alb-controller-policy", local.cluster_name)
  path   = "/"
  policy = file("${path.module}/files/AWSLoadBalancerControllerPolicy.json")
}

resource "aws_iam_policy_attachment" "aws_load_balancer_controller_policy" {
  name       = "aws_load_balancer_controller_policy"
  roles      = [aws_iam_role.alb_controller.name]
  policy_arn = aws_iam_policy.aws_load_balancer_controller_policy.arn
}
