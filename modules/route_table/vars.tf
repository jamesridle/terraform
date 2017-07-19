variable "vpc_id" {}

variable "name" {}

variable "gateway_id" {
  default = ""
}

variable "nat_gateway_id" {
  default = ""
}

variable "num_subnets" {}

variable "subnets" {
  default = []
}
