provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "server2" {
  ami             = "i-04e1e0c5b6aa444da"
  subnet_id       = "subnet-003e1119782e07374"
  security_groups = ["sg-07f5cb83e6215f65c"]
  count           = "1"
  instance_type   = "t2.micro"

  tags = {
    Name = "server2"
  }
}