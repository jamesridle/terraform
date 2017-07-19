module "subnet_private" {
  source = "../modules/subnet"

  vpc_id      = "${module.vpc_sandbox.vpc_id}"
  cidr_block  = "5.0.0.16/28"
  subnet_name = "Private Zone"
}
