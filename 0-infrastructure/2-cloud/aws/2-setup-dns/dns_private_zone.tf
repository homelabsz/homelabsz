resource "aws_route53_zone" "this_private" {
  name          = "${local.account}.cloud.aws"
  comment       = "Private AWS zone used for internal services"
  force_destroy = true
  vpc {
    vpc_id = var.vpc_id
  }
  tags = {
    Name = "${local.account}.cloud.aws"
  }
}
