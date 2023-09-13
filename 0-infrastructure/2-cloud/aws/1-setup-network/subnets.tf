# Setup Subnet Private
resource "aws_subnet" "private" {
  for_each = { for idx, config in local.subnet_cidr_private : idx => config }

  vpc_id            = aws_vpc.this.id
  cidr_block        = each.value.cidr_block
  availability_zone = each.value.availability_zone

  tags = {
    Name = "subnet-${local.account}-private-${each.key}"
  }
}

# Setup Subnet Public
resource "aws_subnet" "public" {
  for_each = { for idx, config in local.subnet_cidr_public : idx => config }

  vpc_id            = aws_vpc.this.id
  cidr_block        = each.value.cidr_block
  availability_zone = each.value.availability_zone

  tags = {
    Name = "subnet-${local.account}-public-${each.key}"
  }
}

# Setup Subnet Publish
resource "aws_subnet" "publish" {
  for_each = { for idx, config in local.subnet_cidr_publish : idx => config }

  vpc_id            = aws_vpc.this.id
  cidr_block        = each.value.cidr_block
  availability_zone = each.value.availability_zone

  tags = {
    Name = "subnet-${local.account}-publish-${split("-", each.value.availability_zone)[3]}"
  }
}
