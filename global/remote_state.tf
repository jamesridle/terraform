module "remote_state" {
    source = "../modules/s3"

    bucket-name = "terraform.rarmstrong-sanbox.com"
}