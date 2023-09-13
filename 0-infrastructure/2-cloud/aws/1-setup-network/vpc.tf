# Setup VPC
resource "aws_vpc" "this" {
  enable_dns_support   = true
  enable_dns_hostnames = true
  cidr_block           = var.vpc_cidr
  tags = {
    Name = "vpc-${local.account}"
  }
}

# Setup FlowLog to VPC
resource "aws_cloudwatch_log_group" "vpc_flowlog" {
  retention_in_days = 365
  name              = "/vpc/${local.account}/flowlog"
  tags = {
    Name = "vpc-${local.account}-flowlog"
  }
}

resource "aws_iam_role" "vpc_flowlog" {
  name               = "custom-role-vpc-flowlog"
  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "",
      "Effect": "Allow",
      "Principal": {
        "Service": "vpc-flow-logs.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
EOF
}

resource "aws_iam_role_policy" "vpc_flowlog" {
  role   = aws_iam_role.vpc_flowlog.id
  name   = "custom-policy-vpc-flowlog"
  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents",
        "logs:DescribeLogGroups",
        "logs:DescribeLogStreams"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ]
}
EOF
}

resource "aws_flow_log" "vpc_flowlog" {
  vpc_id                   = aws_vpc.this.id
  traffic_type             = "ALL"
  max_aggregation_interval = 60
  log_group_name           = aws_cloudwatch_log_group.vpc_flowlog.id
  iam_role_arn             = aws_iam_role.vpc_flowlog.arn
}
