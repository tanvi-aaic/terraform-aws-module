provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "module-ec2" {
  ami           = ami-053b0d53c279acc90
  instance_type = t3a.small

  tags = {
    Name = custom-module
  }
}
