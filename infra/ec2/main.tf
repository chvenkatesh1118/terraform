provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "server2" {
  ami             = var.ec2_information.ami
  subnet_id       = var.ec2_information.subnet
  security_groups = ["sg-07f5cb83e6215f65c"]
  count           = var.ec2_information.count
  instance_type   = "t2.micro"
  tags = {
    Name = var.ec2_information.name
  }
}