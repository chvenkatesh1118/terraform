resource "aws_launch_template" "template" {
  name_prefix   = var.name
  image_id      = var.ami
instance_type = var.type
}

resource "aws_autoscaling_group" "atoscalinggroup" {
availability_zones = ["us-east-1a"]
desired_capacity   = 2
max_size           = 2
min_size           = 1

launch_template {
id      = aws_launch_template.template.id
version = "$Default"
}
}


variable "name" {}
variable "type" {}
variable "ami" {}