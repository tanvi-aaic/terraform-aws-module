resource "aws_instance" "terraform-cloud" {
    ami = var.ami
    instance_type = var.instance_type
    tags = {
      name = var.name
    }
}
