terraform {
  backend "s3" {
    bucket         = "s3remote0812" # change this
    key            = "terraform.tfstate"
    region         = "ap-south-1"
    encrypt        = true
    dynamodb_table = "terraform-lock"
  }
}
