variable "instance_type" {
  description = "it will create instance type"
  type = string
  default = "t2.micro"
}
variable "ami" {
  description = "it will create ami"
  type = string
  default = "ami-0f5ee92e2d63afc18"
}
