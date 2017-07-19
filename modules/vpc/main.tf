resource "aws_vpc" "vpc" {
    cidr_block = "${var.vpc_cidr-block}"

    tags = {
        Name = "${var.vpc_name}"
        Terraform = true
    }
}