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
      "Sid": "AWSVPCFlowLogsAssumeRole",
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
      "Sid": "AWSVPCFlowLogsPushToCloudWatch",
      "Effect": "Allow",
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents",
        "logs:DescribeLogGroups",
        "logs:DescribeLogStreams"
      ],
      "Resource": "*"
    }
  ]
}
EOF
}

resource "aws_flow_log" "vpc_flowlog" {
  log_destination_type     = "cloud-watch-logs"
  log_destination          = aws_cloudwatch_log_group.vpc_flowlog.arn
  iam_role_arn             = aws_iam_role.vpc_flowlog.arn
  vpc_id                   = aws_vpc.this.id
  traffic_type             = "ALL"
  max_aggregation_interval = 60
}
