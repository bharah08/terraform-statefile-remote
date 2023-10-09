provider "aws" {
  region = "ap-south-1"
}
resource "aws_instance" "example" {
 ami = var.ami
instnace_type = var.instance_type

tags = {
name = "backend"
}
}
