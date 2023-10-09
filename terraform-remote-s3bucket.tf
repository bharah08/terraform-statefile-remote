

provider "aws" {
   region     = "ap-south-1"
}
# Configure the S3 backend for storing Terraform state
terraform {
  backend "s3" {
    bucket         = "harddevops081292"
    key            = "terraform.tfstate"
    region         = "ap-south-1" # Change to your desired region
    encrypt        = true
    dynamodb_table = "dynamodb-test"
  }
}
resource "aws_instance" "ec2_example" {
    ami = var.ami
    instance_type= var.instance_type
    tags = {
        Name = "prod"
    }
}
