output "abc1" {
  value = "200"
}
output "number" {
  value = 200
}
output "boolean" {
  value = true
}
variable "abc" {
  default = "100"
}


output "abc" {
  value = var.abc
}
