name = "ec2-1"
subnet = "subnet-003e1119782e07374"
type = "t2.micro"
ami = "ami-0bb6af715826253bf"


#output "abc" {
#  value = "Hello\nWorld"
#}
#
#output "abc1" {
#  value = "hello"
#}
#
#variable "abc" {
#    default = "100"
#}
#
#output "abc" {
#    value = var.abc
#}
#
#variable "abc1" {
#    default = 200
#}
#
#output "abc1" {
#    value = "Value of abc1 = ${var.abc1}"
#}
#
## String Data type
#variable "sample1" {
#    default = "Hello World"
#}

## Number data type
#variable "sample2" {
#    default = 100
#}
#
## Boolean Data type
#variable "sample3" {
#    default = true
#}
#
#variable "samplex" {
#    default = [
#        "Hello",
#        1000,
#        true,
#        "World"
#    ]
#}
#
#variable "sampley" {
#    default = {
#        string  = "Hello",
#        number  = 100,
#        boolean = true
#    }
#}
#
#output "samplex" {
#    value = "Value 1 = ${var.samplex[0]}, Value 3 = ${var.samplex[2]}"
#}
#
#output "sampley" {
#    value = "String = ${var.sampley["string"]}, Number = ${var.sampley["number"]}, Boolean = ${var.sampley["boolean"]}"
#}
#
#variable "a" {}
#output "a" {