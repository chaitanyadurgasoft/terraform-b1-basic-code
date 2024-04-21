provider "aws" {
  region = "us-east-2"
}
terraform {
  backend "s3" {
    bucket         = "backend-b1-bucket"
    key            = "state/devopsb1.tfstate"
    region         = "us-east-2"
    encrypt        = true
  }
}
