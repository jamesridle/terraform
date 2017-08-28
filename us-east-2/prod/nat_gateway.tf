resource "aws_nat_gateway" "nat_gateways" {
    count = 3

    allocation_id = "${element(aws_eip.eip.*.id,count.index)}"
    subnet_id = "${element(aws_subnet.public_subnets.*.id,count.index)}"    
}

resource "aws_eip" "eip" {
    count = 3

    vpc = true
}