provider "aws" {
  region = "us-east-2"
}
terraform {
  backend "s3" {
    bucket         = "backend-b1-bucket"
    key            = "state/devopsb1.tfstate"
    dynamodb_table = "terraform-state-lock-dynamo"
    region         = "us-east-2"
    encrypt        = true
  }
}
