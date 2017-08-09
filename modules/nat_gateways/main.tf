# Elastic IP
resource "aws_eip" "elastic_ip" {
  vpc   = true
  count = "${var.num_nodes}"
}

# NAT gateway
resource "aws_nat_gateway" "nat_gw" {
  count         = "${var.num_nodes}"
  allocation_id = "${element(aws_eip.elastic_ip.*.id, count.index)}"
  subnet_id     = "${element(var.private_subnet_ids, count.index)}"
}