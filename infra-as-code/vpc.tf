#Criando  primeiro a VPC
resource "aws_vpc" "my_labs_vpc" {
  cidr_block = var.vpc_cidr_block
  tags = {
    Name = var.vpc_name

  }
}


