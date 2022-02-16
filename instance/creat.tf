resource "aws_instance" "instance" {
   ami           = "ami-0d997c5f64a74852c"
   instance_type = "t2.micro"
   vpc_id            = "vpc-0bf57a4f41c708816"
    subnet_id   = "subnet-0f42b250c3cf1d75c"
    vpc_security_group_ids = "sgr-07d38fac622e24c40"
   tags = {
      Name = frontend
    }
  }
