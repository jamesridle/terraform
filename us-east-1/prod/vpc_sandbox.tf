module "vpc_sandbox" {
  source = "../modules/vpc"

  vpc_name                = "East-1 Sandox"
  vpc_cidr-block          = "6.0.0.0/16"
}
