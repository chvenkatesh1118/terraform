provider "aws" {
  region = "us-east-1"
}

#resource "aws_spot_instance_request" "cheap_worker" {
#  count = length(var.components)
#  ami       = "ami-0eb5f3f64b10d3e0e"
#  instance_type = "t2.micro"
#  vpc_security_group_ids = ["sg-0a45fd04183d267bd"]
#  wait_for_fulfillment = true
#  tags = {
#    Name = element(var.components,count.index )
#  }
#}

resource "aws_instance" "instance" {
  ami           = "ami-0eb5f3f64b10d3e0e"
  count = length(var.components)
  instance_type = "t2.micro"
  wait_for_fulfillment = true
  vpc_security_group_ids = ["sg-0a45fd04183d267bd"]

  tags = {
    Name = element(var.components,count.index )
  }
}
resource "aws_ec2_tag" "tags" {
  count = length(var.components)
  key         = "Name"
  resource_id = element(aws_instance.instance, count.index)
  value       = element(var.components, count.index)

}


data "aws_ami" "ami" {
  most_recent = true
  name_regex  = "^Cent*"
  owners      = ["973714476881"]
}

 variable "components" {
   default = ["frontend", "mongodb" ]

 }

#locals {
#  COMP-NAME = element(var.components, count.index)
#}