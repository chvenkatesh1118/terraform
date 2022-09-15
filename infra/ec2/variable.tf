variable "ec2_information" {
  type = object({
    name    = "ec2-3"
    ami = "ami-0bb6af715826253bf"
    subnet = ""
    count = "1"
    type = "t2.micro"

  })
  sensitive = true
}