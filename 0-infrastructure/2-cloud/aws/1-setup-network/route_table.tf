# Setup Route Table Private
resource "aws_route_table" "private" {
  vpc_id = aws_vpc.this.id
  tags = {
    Name = "rt-${local.account}-priv"
  }
}

# Setup Route Table Public
resource "aws_route_table" "public" {
  vpc_id = aws_vpc.this.id
  route {
    gateway_id = aws_internet_gateway.this.id
    cidr_block = "0.0.0.0/0"
  }
  tags = {
    Name = "rt-${local.account}-public"
  }
}

# Setup Route Table Publish
resource "aws_route_table" "publish" {
  vpc_id = aws_vpc.this.id
  tags = {
    Name = "rt-${local.account}-publish"
  }
}
