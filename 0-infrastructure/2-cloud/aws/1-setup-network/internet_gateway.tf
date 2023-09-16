/*
O Internet Gateway é um recurso que permite que a VPC se comunique com a Internet.
*/
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.this.id
  tags = {
    Name = "igw-${local.account}"
  }
}

resource "aws_route_table" "igw_route_table" {
  vpc_id = aws_vpc.this.id
  tags = {
    Name = "rt-${local.account}-public"
  }
}

resource "aws_route" "public_internet_access" {
  route_table_id         = aws_route_table.igw_route_table.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.igw.id
}
