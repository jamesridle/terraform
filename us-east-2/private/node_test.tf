module "east_2_test_box" {
    source = "../../modules/ubuntu_box"

    ami = "ami-10547475"
    subnet_id = "${data.terraform_remote_state.public_east_2.subnet_ids[0]}"
    key_name = "sandbox_ohio"
}