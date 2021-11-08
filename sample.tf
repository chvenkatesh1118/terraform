output "abc" {
  value = "200"
}
output "number" {
  value = 200
}
output "boolean" {
  value = true
}
variable "abc" {
  default = 580
}

output "print" {
  value = "a= ${ abc }"
}