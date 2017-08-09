resource "aws_instance" "openvpn" {
  ami                         = "${lookup(var.ami,"openvpn")}"
  instance_type               = "t2.micro"
  key_name                    = "sandbox"
  subnet_id                   = "${module.subnet_public.subnet_id}"
  vpc_security_group_ids      = ["${module.sg_openvpn.sg_id}"]
  associate_public_ip_address = true

  tags = {
    Name      = "OpenVPN"
    Terraform = true
  }
}
