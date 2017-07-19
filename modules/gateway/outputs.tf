output "internet_gw_id" {
  value = "${aws_internet_gateway.internet_gw.id}"
}

output "elastic_ip_ids" {
  value = ["${aws_eip.elastic_ip.*.id}"]
}

output "nat_gw_ids" {
  value = ["${aws_nat_gateway.nat_gw.*.id}"]
}
