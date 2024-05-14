resource "aws_subnet" "my_labs_sub" {
  vpc_id            = aws_vpc.my_labs_vpc.id
  cidr_block        = var.sub_net_cidr_block
  availability_zone = var.sub_net_availability_zone

  tags = {
    Name = var.sub_net_name
  }
}