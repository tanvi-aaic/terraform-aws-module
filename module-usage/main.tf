module "ec2_instance" {
  source        = "./../aws-ec2-module"
  ami_id        = ami-053b0d53c279acc90
  instance_type = t3a.small
  instance_name = custom
}
