provider "aws" {
  region = "us-east-1"
}

resource "aws_spot_instance_request" "cheap_worker" {
  count = length(var.components)
  ami       = "ami-1234"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0a45fd04183d267bd"]
  wait_for_fulfillment = true
  tags = {
    Name = element(var.components, count.index)
  }
}
resource "aws_ec2_tag" "tags" {
  count = length(var.components)
  key         = "name"
  resource_id = element(aws_spot_instance_request.cheap_worker.*.spot_instance_id, count.index)
  value       = element(var.components, count.index)
}


data "aws_ami" "ami" {
  most_recent = true
  name_regex  = "^Cent*"
  owners      = ["973714476881"]
}

 variable "components" {
   default = ["frontend", "mongodb", "catalogue", "cart", "user", "redis", "mysql", "shipping", "rabbitmq", "payment"]

 }

#locals {
#  COMP-NAME = element(var.components, count.index)
#}