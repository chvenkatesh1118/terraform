provider "aws" {
  region = "us-east-1"
}
variable "name" {
  type = "string"
  value = "name"
}
output "name" {
  value = "name"
}