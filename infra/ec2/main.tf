
provider  "aws" {
  region =  "us-east-1"
}



resource "aws_instance" "server2" {
  ami             = var.ami
  subnet_id       = var.subnet
  security_groups = ["sg-07f5cb83e6215f65c"]
#  count         = "1"
  instance_type   = var.type
  tags = {
    Name = var.name
  }
}


output  "private_ip" {
  value = aws_instance.server2.private_ip
}

output "public_ip" {
  value = aws_instance.server2.public_ip
}

variable "name" {}
variable "type" {}
variable "ami" {}
variable "subnet" {}
