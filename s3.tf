resource "aws_s3_bucket" "BankBucket" {
  bucket = "backend-b1-bucket"
  tags = {
    Name = "backend-b1-bucket"
  }
}