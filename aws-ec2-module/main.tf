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
resource "aws_eip" "example" {
  instance = aws_instance.terraform-cloud.id
}

resource "aws_eip_association" "eip_assoc" {
  instance_id   = aws_instance.terraform-cloud.id
  allocation_id = aws_eip.example.id
}
