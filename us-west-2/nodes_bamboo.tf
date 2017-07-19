resource "aws_instance" "bamboo" {
  ami             = "${lookup(var.ami,"bamboo")}"
  instance_type   = "t2.large"
  key_name        = "sandbox"
  subnet_id       = "${module.subnet_private.subnet_id}"
  vpc_security_group_ids = ["${module.sg_build.sg_id}"]

  tags = {
      Name = "Bamboo"
      Terraform = true
  }
}
