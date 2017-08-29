resource "aws_subnet" "private_subnets" {
  count = 3

  availability_zone = "${element(data.aws_availability_zones.available.names, count.index)}"
  cidr_block        = "${element(var.private_subnets,count.index)}"
  vpc_id            = "${data.terraform_remote_state.public_east_2.vpc_id}"

  tags = {
    Name      = "${format("Private_Subnet_%s", element(data.aws_availability_zones.available.names, count.index))}"
    Terraform = true
  }
}
