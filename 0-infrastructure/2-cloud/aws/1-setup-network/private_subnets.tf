resource "aws_subnet" "private" {
  for_each = { for idx, config in local.subnet_cidr_private : idx => config }

  vpc_id            = aws_vpc.this.id
  cidr_block        = each.value.cidr_block
  availability_zone = each.value.availability_zone

  tags = {
    Name = "subnet-${local.account}-private-${split("-", each.value.availability_zone)[2]}"
  }
}

resource "aws_route_table_association" "private" {
  for_each       = { for idx, value in aws_subnet.private : idx => value }
  subnet_id      = each.value.id
  route_table_id = aws_route_table.private.id
}
