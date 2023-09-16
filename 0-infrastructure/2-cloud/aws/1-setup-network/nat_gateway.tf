resource "aws_eip" "nat" {
  for_each = { for idx, value in aws_subnet.public : idx => value }
  domain   = "vpc"
  tags = {
    Name = format("eip-nat-gateway-%s", split("-", each.value.availability_zone)[2])
  }
}

resource "aws_nat_gateway" "nat" {
  for_each      = aws_subnet.public
  allocation_id = aws_eip.nat[each.key].id
  subnet_id     = aws_subnet.public[each.key].id

  tags = {
    Name = format("nat-gateway-%s", split("-", aws_subnet.public[each.key].availability_zone)[2])
  }
}

resource "aws_route_table" "private" {
  vpc_id = aws_vpc.this.id
  tags = {
    Name = "rt-${local.account}-private"
  }
}

resource "aws_route" "private" {
  route_table_id         = aws_route_table.private.id
  nat_gateway_id         = aws_nat_gateway.nat[0].id
  destination_cidr_block = "0.0.0.0/0"
}
