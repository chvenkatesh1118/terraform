resource "aws_s3_bucket" "s3bucket" {
  bucket = var.NAME

  tags = {
    Name        = var.NAME

  }


}
resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.s3bucket.id
  acl    = "private"
}
variable "NAME" {}