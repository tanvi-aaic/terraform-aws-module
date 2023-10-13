//--------------------------------------------------------------------
// Modules
module "module" {
  source  = "app.terraform.io/AAIC-org/module/aws"
  version = "1.0.0"

  ami = "ami-053b0d53c279acc90"
  instance_type = "t3a.small"
  name = "custom-module"
}
