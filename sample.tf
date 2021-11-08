output "abc1" {
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