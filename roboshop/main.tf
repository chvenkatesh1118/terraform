provider "aws" {
  region = "us-east-1"
}
#
#
#resource "aws_instance" "instance" {
#  ami           = "ami-0eb5f3f64b10d3e0e"
#  count = length(var.components)
#  instance_type = "t2.micro"
#  vpc_security_group_ids = ["sg-0a45fd04183d267bd"]
#
#  tags = {
#    Name = element(var.components,count.index )
#  }
#}
#resource "aws_ec2_tag" "tags" {
#  count = length(var.components)
#  key         = "Name"
#  resource_id = element(aws_instance.instance.*.spot_instance_id, count.index)
#  value       = element(var.components, count.index)
#
#}
#
#
#data "aws_ami" "ami" {
#  most_recent = true
#  name_regex  = "^Cent*"
#  owners      = ["973714476881"]
#}
#
# variable "components" {
#   default = ["frontend", "mongodb" ]
#
# }


resource "aws_instance" "sample" {
  ami = "ami-0855cab4944392d0a"
  instance_type = "t2.micro"
}
output "public_ip" {
  value = "aws_instance.sample.public_ip"
}
