# create s3 bucket for terraform state file
provider "aws" {
  access_key = " " #access key for s3user
  secret_key = " " #secret key for s3user
  region     = "eu-west-2"
}
terraform {
  backend "s3" {
    bucket         = "uyis3bucket"
    key            = "mys3bucketkey"
    region         = "eu-west-2"
    dynamodb_table = "mys3table"
  }
}
