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