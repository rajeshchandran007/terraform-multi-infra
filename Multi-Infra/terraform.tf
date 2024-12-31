terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.82.2"
    }
  }
  backend "s3" {
    bucket         = "tf-state-bucket-007"   # The S3 bucket you created
    key            = "terraform-multi-infra.tfstate"      # Path to the state file in the bucket
    region         = "us-east-1"              # Adjust to your AWS region
    dynamodb_table = "tf-state-table-007"    # The DynamoDB table you created
    encrypt        = true                     # Ensures state file encryption
    
  }
}