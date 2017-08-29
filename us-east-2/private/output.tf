output "number_of_availability_zones" {
  value = "${length(data.aws_availability_zones.available.names)}"
}
