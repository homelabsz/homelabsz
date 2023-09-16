resource "aws_subnet" "public" {
  for_each = { for idx, config in local.subnet_cidr_public : idx => config }

  vpc_id                  = aws_vpc.this.id
  cidr_block              = each.value.cidr_block
  map_public_ip_on_launch = true
  availability_zone       = each.value.availability_zone

  tags = {
    Name = "subnet-${local.account}-public-${split("-", each.value.availability_zone)[2]}"
  }
}

resource "aws_route_table_association" "public" {
  for_each       = { for idx, value in aws_subnet.public : idx => value }
  subnet_id      = each.value.id
  route_table_id = aws_route_table.igw_route_table.id
}
