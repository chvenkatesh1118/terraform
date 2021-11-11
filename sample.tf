#output "abc" {
#  value = 200
#}
#output "number" {
#  value = 200
#}
#output "boolean" {
#  value = true
#}
#variable "chanti" {
#  default = "checking string"
#}
#output "showstring" {
#  value = var.chanti
#
#}
#variable "num" {
#  default = 7013797108
#}
#
#output "mynumber" {
#  value = "mynumber = ${var.num}"
#}
#
#variable "chanti1" {
#  default = {
#    x = 25,
#    y =22,
#    z = "chanti2",
#    s = true,
#  }
#}
#
#output "details" {
#  value = "age = ${var.chanti1["x"]}"
#}
