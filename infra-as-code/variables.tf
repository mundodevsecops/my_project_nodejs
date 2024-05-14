variable "aws_region" {
  type    = string
  default = "us-east-1"
}

variable "vpc_cidr_block" {
  type    = string
  default = "10.0.0.0/16"
}

variable "vpc_name" {
  type    = string
  default = "my-labs-vpc"
}

variable "sub_net_name" {
  type    = string
  default = "my-labs-sub"
}

variable "sub_net_cidr_block" {
  type    = string
  default = "10.0.0.0/24"
}

variable "sub_net_availability_zone" {
  type    = string
  default = "us-east-1a"
}

variable "internet_gateway_name" {
  type    = string
  default = "my-labs-gw"
}

variable "route_table_name" {
  type    = string
  default = "my-labs-rt"
}

variable "key_pair_name" {
  type    = string
  default = "admin-devops"
}

variable "instance_name" {
  type    = string
  default = "desafio-devops-ec2"
}

variable "instance_ami" {
  type    = string
  default = "ami-080e1f13689e07408"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}


