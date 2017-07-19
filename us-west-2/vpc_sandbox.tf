module "vpc_sandbox" {
  source = "../modules/vpc"

  vpc_name       = "West-2 Sandox"
  vpc_cidr-block = "5.0.0.0/16"
}
