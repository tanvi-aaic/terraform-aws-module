//--------------------------------------------------------------------
// Modules
module "module" {
  source  = "app.terraform.io/AAIC-org/module/aws"
  version = "1.0.0"

  ami = "ami-03a6eaae9938c858c"
  instance_type = "t3a.small"
  name = "custom-module"
}
