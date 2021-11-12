provider "aws" {
  region = "us-east-1"
}
resource "aws" "name"  {
  default = "name"
}
output "name" {
  value = "name"
}