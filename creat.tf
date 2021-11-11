provider "aws" {
  region = "us-east-1"
}
resource "aws_security_group"  "s_group"  {
  name        = "s_group"
  description = "s_group"


  ingress = [
    {
      description      = "ingress"
      from_port        = 22
      to_port          = 22
      protocol         = "tcp"
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = []
      prefix_list_id   = []
      security_groups  = []
      self             = false
      description = "s_group"
    }
  ]

  egress = [
    {
      from_port        = 0
      to_port          = 0
      protocol         = "-1"
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = ["::/0"]
      security_groups  = []
      prefix_list_ids  = []
      self             = false
      description      = "egress"

    }
  ]

  tags = {
    Name = "s_group"
  }
}

resource "aws_instance" "frontend" {
  ami           = "ami-077fb3e62ddf0fa9a"
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.s_group.id]

  tags = {
    Name = "frontend"
  }
}