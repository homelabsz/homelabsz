resource "aws_iam_policy" "eks_viewer_access_policy" {
  name   = format("%s-eks-viewer-access-policy", local.cluster_name)
  path   = "/"
  policy = file("${path.module}/files/AmazonEKSViewNodesAndWorkloadsPolicy.json")
}

resource "aws_iam_policy" "eks_admin_access_policy" {
  name   = format("%s-eks-admin-access-policy", local.cluster_name)
  path   = "/"
  policy = file("${path.module}/files/AmazonEKSAdminPolicy.json")
}
