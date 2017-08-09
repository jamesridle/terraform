module "private_routetable" {
  source = "../modules/route_table"

  vpc_id         = "${module.vpc_sandbox.vpc_id}"
  name           = "nat"
  nat_gateway_id = "${module.nat_gateways.nat_gw_ids[0]}"

  # XXX - https://serialseb.com/blog/2016/05/11/terraform-working-around-no-count-on-module/
  num_subnets = "1"
  subnets     = ["${module.subnet_private.subnet_id}"]
}
