provider "aws" {
  region = "us-east-2"
}

data "aws_availability_zones" "available" {}

data "terraform_remote_state" "prod-east-2" {
  backend = "s3"

  config {
    bucket = "terraform.rarmstrong-sandbox.com"
    key    = "us-east-2/prod"
    region = "us-west-2"
  }
}
