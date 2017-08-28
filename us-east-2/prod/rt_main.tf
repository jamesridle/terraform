resource "aws_route_table" "main_table" {
    vpc_id = "${aws_vpc.east_2.id}"

    tags = {
        Name = "Main Route Table"
        Terraform = true
    }
}

resource "aws_route" "default_route" {
    route_table_id = "${aws_route_table.main_table.id}"
    destination_cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.internet_gateway.id}"
}

resource "aws_main_route_table_association" "east_2_main_table" {
    vpc_id = "${aws_vpc.east_2.id}"
    route_table_id = "${aws_route_table.main_table.id}"
}