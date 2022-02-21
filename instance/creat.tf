provider "aws" {
  region = "us-east-1"
}


resource "aws_instance" "frontend" {
   ami           = "i-08f0aa11b0a26ef7a"
   instance_type  = "t2.micro"
   subnet_id   =  "subnet-0f42b250c3cf1d75c"
   vpc_security_group_ids = "sg-03439c9546a230549"
   count = index{var.COMPONENTS}
   tags = {
      Name = var.COMPONENTS
    }
 }




