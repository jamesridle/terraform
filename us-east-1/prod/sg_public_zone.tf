module "public_zone" {
    source = "../modules/security_groups"

    vpc_id = "${module.vpc_sandbox.vpc_id}"
    name = "public_zone"
}

resource "aws_security_group_rule" "public_allow_ssh" {
    type = "ingress"

    from_port = 22
    to_port   = 22
    protocol  = "tcp"

    cidr_blocks = ["0.0.0.0/0"]
    security_group_id = "${module.public_zone.sg_id}"
}