# s3 bucket
resource "aws_s3_bucket" "backend_bucket" {
  bucket = "tf-state-bucket-007"
  
}

# dynamo db
resource "aws_dynamodb_table" "backend_table" {
  name = "tf-state-table-007"
  billing_mode = "PAY_PER_REQUEST"
  hash_key = "LockID"
  attribute {
    name = "LockID"
    type = "S"
  }
}


