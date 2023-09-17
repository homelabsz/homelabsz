data "aws_iam_policy_document" "eks_nodes_role" {
  version = "2012-10-17"
  statement {
    actions = ["sts:AssumeRole"]
    principals {
      type = "Service"
      identifiers = [
        "ec2.amazonaws.com"
      ]
    }
  }
}

resource "aws_iam_role" "eks_nodes_roles" {
  name               = format("custom-role-%s-nodes", local.cluster_name)
  assume_role_policy = data.aws_iam_policy_document.eks_nodes_role.json
}

resource "aws_iam_role_policy_attachment" "node" {
  role       = aws_iam_role.eks_nodes_roles.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy"
}

resource "aws_iam_role_policy_attachment" "cni" {
  role       = aws_iam_role.eks_nodes_roles.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy"
}

resource "aws_iam_role_policy_attachment" "ecr" {
  role       = aws_iam_role.eks_nodes_roles.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly"
}

resource "aws_iam_role_policy_attachment" "cloudwatch" {
  role       = aws_iam_role.eks_nodes_roles.name
  policy_arn = "arn:aws:iam::aws:policy/CloudWatchAgentServerPolicy"
}

resource "aws_iam_role_policy_attachment" "ssm" {
  role       = aws_iam_role.eks_nodes_roles.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"
}

data "aws_iam_policy_document" "csi_driver" {
  version = "2012-10-17"
  statement {
    effect = "Allow"
    actions = [
      "kms:CreateGrant",
      "kms:ListGrants",
      "kms:RevokeGrant",
      "kms:Encrypt",
      "kms:Decrypt",
      "kms:ReEncrypt*",
      "kms:GenerateDataKey*",
      "kms:DescribeKey"
    ]
    resources = [
      aws_kms_key.eks.arn
    ]
  }

}

resource "aws_iam_policy" "csi_driver" {
  name   = format("%s-csi-driver-policy", local.cluster_name)
  path   = "/"
  policy = data.aws_iam_policy_document.csi_driver.json
}

resource "aws_iam_policy_attachment" "csi_driver" {
  name       = "aws_csi_driver_policy"
  roles      = [aws_iam_role.eks_nodes_roles.name]
  policy_arn = aws_iam_policy.csi_driver.arn
}
