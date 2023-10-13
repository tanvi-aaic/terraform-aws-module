output "public-ip-address" {
  value = aws_instance.terraform-cloud.public_ip
}
