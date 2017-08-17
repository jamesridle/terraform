module "public_routetable" {
  source = "../modules/route_table"

  vpc_id     = "${module.vpc_sandbox.vpc_id}"
  name       = "public_gateway"
  internet_gateway_id = "${module.internet_gateway.internet_gw_id}"

  # XXX - https://serialseb.com/blog/2016/05/11/terraform-working-around-no-count-on-module/
  num_subnets = "1"
  subnets     = ["${module.subnet_public.subnet_id}"]
}
