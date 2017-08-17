module "public_testbox" {
    source = "../modules/ubuntu_box"

    key_name = "sandbox_east"
    subnet_id = "${module.subnet_public.subnet_id}"
    vpc_security_group_ids = ["${module.public_zone.sg_id}"]


    tags = {
        Name = "public_testbox"
        Terraform = "true"
    }
}