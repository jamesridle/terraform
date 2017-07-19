# Create an Internet gateway
resource "aws_internet_gateway" "internet_gw" {
  vpc_id = "${var.vpc_id}"

  tags {
    Name      = "Internet Gateway"
    Terraform = "true"
  }
}

# Elastic IP
resource "aws_eip" "elastic_ip" {
  vpc   = true
  count = "${var.num_nodes}"

  depends_on = ["aws_internet_gateway.internet_gw"]
}

# NAT gateway
resource "aws_nat_gateway" "nat_gw" {
  count         = "${var.num_nodes}"
  allocation_id = "${element(aws_eip.elastic_ip.*.id, count.index)}"
  subnet_id     = "${element(var.public_subnet_ids, count.index)}"
}
