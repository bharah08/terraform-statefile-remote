

provider "aws" {
   region     = "ap-south-1"
}

resource "aws_dynamodb_table" "state_locking" {
  hash_key = "LockID"
  name     = "dynamodb-test"
  attribute {
    name = "LockID"
    type = "S"
  }
  billing_mode = "PAY_PER_REQUEST"
}

# Configure the S3 backend for storing Terraform state
terraform {
  backend "s3" {
    bucket         = "harddevops081292"
    key            = "terraform.tfstate"
    region         = "ap-south-1" # Change to your desired region
    encrypt        = true
  }
}
resource "aws_instance" "ec2_example" {
    ami = var.ami
    instance_type= var.instance_type
    tags = {
        Name = "prod"
    }
}
