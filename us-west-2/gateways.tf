module "gateways" {
  source = "../modules/gateway"

  vpc_id            = "${module.vpc_sandbox.vpc_id}"
  num_nodes         = "3"
  public_subnet_ids = ["${module.subnet_public.subnet_id}"]
}
