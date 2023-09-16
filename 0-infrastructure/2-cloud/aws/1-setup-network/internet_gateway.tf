resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.this.id
  tags = {
    Name = "igw-${local.account}"
  }
}

resource "aws_route_table" "public" {
  vpc_id = aws_vpc.this.id
  tags = {
    Name = "rt-${local.account}-public"
  }
}

resource "aws_route" "public" {
  route_table_id         = aws_route_table.public.id
  gateway_id             = aws_internet_gateway.igw.id
  destination_cidr_block = "0.0.0.0/0"
}

