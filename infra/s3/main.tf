resource "aws_s3_bucket" "s3bucket" {
  bucket = "chanti"
  storage_class = "STANDARD_IA"

  tags = {
    Name        = "chanti"

  }


}
resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.s3bucket.id
  acl    = "private"
}