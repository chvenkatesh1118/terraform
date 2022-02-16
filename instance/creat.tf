resource "aws_instance" "frontend" {
   ami           = "ami-0d997c5f64a74852c"
   instance_type  = "t2.micro"
    vpc_id            = "vpc-0bf57a4f41c708816"
    subnet_id   =  "subnet-0f42b250c3cf1d75c"
    vpc_security_group_ids = aws_security_group.newsg.id
   tags = {
      Name = frontend
    }
  }


resource "aws_security_group" "newsg" {
  name        = "newsg"
  description = "Allow TLS inbound traffic"
  vpc_id      = "vpc-0bf57a4f41c708816"

  ingress {
    description      = "TLS from VPC"
    from_port        = 22
    to_port          = 80
    protocol         = "ssh"
     cidr_blocks      = ["0.0.0.0/0"]


  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]

  }

  tags = {
    Name = "newsg"
  }
}

provider "aws" {
  region = "us-east-1"
}
