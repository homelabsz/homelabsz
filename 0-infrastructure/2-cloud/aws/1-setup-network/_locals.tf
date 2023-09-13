locals {
  account = "${var.environment}-services"
  subnet_cidr_private = [
    {
      cidr_block        = "10.165.16.0/24"
      availability_zone = "${var.region}-1a"
    },
    {
      cidr_block        = "10.165.17.0/24"
      availability_zone = "${var.region}-1b"
    },
    {
      cidr_block        = "10.165.18.0/24"
      availability_zone = "${var.region}-1c"
    },
  ]
  subnet_cidr_public = [
    {
      cidr_block        = "10.165.29.0/24"
      availability_zone = "${var.region}-1a"
    },
    {
      cidr_block        = "10.165.30.0/24"
      availability_zone = "${var.region}-1b"
    },
    {
      cidr_block        = "10.165.31.0/24"
      availability_zone = "${var.region}-1c"
    },
  ]
  subnet_cidr_publish = [
    {
      cidr_block        = "10.165.22.0/23"
      availability_zone = "${var.region}-1a"
    },
    {
      cidr_block        = "10.165.24.0/23"
      availability_zone = "${var.region}-1b"
    },
    {
      cidr_block        = "10.165.26.0/23"
      availability_zone = "${var.region}-1c"
    },
  ]
}
