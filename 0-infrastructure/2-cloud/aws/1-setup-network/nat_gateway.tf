/*
O AWS Elastic IP é um recurso que permite que um IP seja associado a uma conta da AWS.
*/
resource "aws_eip" "vpc_iep" {
  domain = "vpc"
  tags = {
    Name = format("eip-%s", local.account)
  }
}

/*
O AWS Nat Gateway é um recurso que permite que instâncias em uma subnet privada se comunique com a Internet.
*/
resource "aws_nat_gateway" "nat" {
  allocation_id = aws_eip.vpc_iep.id
  subnet_id     = aws_subnet.public[0].id

  tags = {
    Name = format("nat-gateway-%s", local.account)
  }
}

resource "aws_route_table" "nat" {
  vpc_id = aws_vpc.this.id
  tags = {
    Name = "rt-${local.account}-private"
  }
}

resource "aws_route" "nat_access" {
  route_table_id         = aws_route_table.nat.id
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = aws_nat_gateway.nat.id
}
