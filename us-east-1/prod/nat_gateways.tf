module "nat_gateways" {
  source = "../modules/nat_gateways"

  num_nodes         = "1"
  private_subnet_ids = ["${module.subnet_public.subnet_id}"]
}
