module "subnet_public" {
  source = "../modules/subnet"

  vpc_id      = "${module.vpc_sandbox.vpc_id}"
  cidr_block  = "6.0.0.0/28"
  subnet_name = "Public Zone"
}
