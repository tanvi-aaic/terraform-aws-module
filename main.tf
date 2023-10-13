//--------------------------------------------------------------------
// Variables
variable "module_ami" {}
variable "module_instance_type" {}
variable "module_name" {}

//--------------------------------------------------------------------
// Modules
module "module" {
  source  = "app.terraform.io/AAIC-org/module/aws"
  version = "1.0.0"

  ami = "${var.module_ami}"
  instance_type = "${var.module_instance_type}"
  name = "${var.module_name}"
}
