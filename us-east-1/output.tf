output "vpc_id" {
  value = "${module.vpc_sandbox.vpc_id}"
}

output "az" {
  value = "${data.aws_availability_zones.available.names}"
}
