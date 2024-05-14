resource "aws_route_table_association" "association" {
  subnet_id      = aws_subnet.my_labs_sub.id
  route_table_id = aws_route_table.my_labs_rt.id
}

resource "aws_route_table" "my_labs_rt" {
  vpc_id = aws_vpc.my_labs_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.my_labs_gw.id
  }

  tags = {
    Name = var.route_table_name
  }
}