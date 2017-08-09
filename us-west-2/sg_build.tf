module "sg_build" {
  source = "../modules/security_groups"

  name   = "Build Server"
  vpc_id = "${module.vpc_sandbox.vpc_id}"
}

resource "aws_security_group_rule" "bamboo_allow_ssh" {
  type        = "ingress"
  from_port   = 22
  to_port     = 22
  protocol    = "tcp"
  cidr_blocks = ["5.0.0.0/16"]

  security_group_id = "${module.sg_build.sg_id}"
}

resource "aws_security_group_rule" "bamboo_allow_http" {
  type        = "ingress"
  from_port   = 80
  to_port     = 80
  protocol    = "tcp"
  cidr_blocks = ["5.0.0.0/16"]

  security_group_id = "${module.sg_build.sg_id}"
}

resource "aws_security_group_rule" "bamboo_allow_https" {
  type        = "ingress"
  from_port   = 443
  to_port     = 443
  protocol    = "tcp"
  cidr_blocks = ["5.0.0.0/16"]

  security_group_id = "${module.sg_build.sg_id}"
}

resource "aws_security_group_rule" "bitbucket_allow_7990" {
  type        = "ingress"
  from_port   = 7990
  to_port     = 7990
  protocol    = "tcp"
  cidr_blocks = ["5.0.0.0/16"]

  security_group_id = "${module.sg_build.sg_id}"
}

resource "aws_security_group_rule" "bitbucket_allow_7999" {
  type        = "ingress"
  from_port   = 7999
  to_port     = 7999
  protocol    = "tcp"
  cidr_blocks = ["5.0.0.0/16"]

  security_group_id = "${module.sg_build.sg_id}"
}

resource "aws_security_group_rule" "artifactory_allow_app" {
  type        = "ingress"
  from_port   = 8081
  to_port     = 8081
  protocol    = "tcp"
  cidr_blocks = ["5.0.0.0/16"]

  security_group_id = "${module.sg_build.sg_id}"
}

resource "aws_security_group_rule" "bamboo_allow_app" {
  type        = "ingress"
  from_port   = 8085
  to_port     = 8085
  protocol    = "tcp"
  cidr_blocks = ["5.0.0.0/16"]

  security_group_id = "${module.sg_build.sg_id}"
}
