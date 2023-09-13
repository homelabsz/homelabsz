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

# Setup Route Table Association Private
resource "aws_route_table_association" "private" {
  for_each       = { for idx, value in aws_subnet.private : idx => value }
  subnet_id      = each.value.id
  route_table_id = aws_route_table.private.id
}

# Setup Route Table Association Public
resource "aws_route_table_association" "public" {
  for_each       = { for idx, value in aws_subnet.public : idx => value }
  subnet_id      = each.value.id
  route_table_id = aws_route_table.public.id
}

# Setup Route Table Association Publish
resource "aws_route_table_association" "publish" {
  for_each       = { for idx, value in aws_subnet.publish : idx => value }
  subnet_id      = each.value.id
  route_table_id = aws_route_table.publish.id
}
