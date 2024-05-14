resource "aws_security_group" "allow_all" {
  name        = "allow_all"
  description = "Permitir o trafego de tudo"
  vpc_id      = aws_vpc.my_labs_vpc.id

    ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
  from_port   = 22
  to_port     = 22
  protocol    = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
  }
  
  egress {
      from_port   = 0
      to_port     = 0
      protocol    = -1
      cidr_blocks = ["0.0.0.0/0"]
  }


  tags = {
    Name = "allow_all"
  }
}