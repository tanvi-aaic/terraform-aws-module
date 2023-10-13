provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "terraform-cloud" {
  ami           = var.ami
  instance_type = var.instance_type
  tags = {
    Name = var.name
  }
}
