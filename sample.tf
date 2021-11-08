output "abc" {
  value = "200"
}
output "number" {
  value = 200
}
output "boolean" {
  value = true
}
variable "chanti" {
  default = "checking string"
}
output "showstring" {
  value = var.chanti

}
variable "abc1" {
  default = 200
}

output "abc1" {
  value = "Value of abc1 = ${var.abc1}"
}

variable "sampley" {
  default = {
    string  = "Hello",
    number  = 100,
    boolean = true
  }
}

#output "sampley" {
#  value = "Value 1 = ${var.samplex[1]}, Value 3 = ${var.samplex[2]}"
#}

output "sampley" {
  value = "String = ${var.sampley["string"]}, Number = ${var.sampley["number"]}, Boolean = ${var.sampley["boolean"]}"
}