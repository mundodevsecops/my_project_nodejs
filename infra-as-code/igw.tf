resource "aws_internet_gateway" "my_labs_gw" {
  tags = {
    Name = var.internet_gateway_name
  }
}

resource "aws_internet_gateway_attachment" "ig_vpc" {
  internet_gateway_id = aws_internet_gateway.my_labs_gw.id
  vpc_id              = aws_vpc.my_labs_vpc.id
}