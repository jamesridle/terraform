resource "aws_subnet" "public_subnets" {
  count = 3

  availability_zone = "${element(data.aws_availability_zones.available.names, count.index)}"
  cidr_block        = "${element(var.public_subnets,count.index)}"
  vpc_id            = "${aws_vpc.east_2.id}"

  tags = {
    Name      = "${format("Public_Subnet_%s", element(data.aws_availability_zones.available.names, count.index))}"
    Terraform = "true"
  }
}
