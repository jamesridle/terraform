resource "aws_vpc" "east_2" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name      = "Sandbox-US-East-2"
    Terraform = true
  }
}
