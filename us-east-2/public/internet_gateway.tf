resource "aws_internet_gateway" "internet_gateway" {
  vpc_id = "${aws_vpc.east_2.id}"

  tags = {
    Terraform = "true"
  }
}
