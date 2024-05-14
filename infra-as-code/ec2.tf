resource "aws_eip" "my_ip" {
  instance = aws_instance.desafio_devops_ec2.id
  domain   = "vpc"

    tags = {
    Name = "elastic-ip"
  }
}

resource "aws_instance" "desafio_devops_ec2" {
  ami                         = var.instance_ami
  instance_type               = var.instance_type
  key_name                    = "admin_devops"
  subnet_id                   = aws_subnet.my_labs_sub.id
  associate_public_ip_address = true
  vpc_security_group_ids              = [aws_security_group.allow_all.id]

  tags = {
    Name = "desafio-devops-ec2"
  }
}

