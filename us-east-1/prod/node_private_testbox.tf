module "private_testbox" {
    source = "../modules/ubuntu_box"

    key_name = "sandbox_east"
    subnet_id = "${module.subnet_private.subnet_id}"
    vpc_security_group_ids = ["${module.private_zone.sg_id}"]


    tags = {
        Name = "private_testbox"
        Terraform = "true"
    }
}