output "number_of_availability_zones" {
  value = "${length(data.aws_availability_zones.available.names)}"
}

output "vpc_id" {
  value = "${aws_vpc.east_2.id}"
}

output "vpc_main_route_table" {
  value = "${aws_vpc.east_2.main_route_table_id}"
}

output "vpc_network_acl_id" {
  value = "${aws_vpc.east_2.default_network_acl_id}"
}

output "vpc_default_security_group_id" {
  value = "${aws_vpc.east_2.default_security_group_id}"
}

output "vpc_default_route_table_id" {
  value = "${aws_vpc.east_2.default_route_table_id}"
}
