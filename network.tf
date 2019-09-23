resource "aws_default_vpc" "default" {
  tags = {
    Name = "Default VPC"
  }
}

data "aws_availability_zones" "available" {
}

resource "aws_default_subnet" "public" {
  count = var.az_count
  availability_zone = data.aws_availability_zones.available.names[count.index]
  map_public_ip_on_launch = true
  tags = {
    Name = "Default subnet - public"
  }
}

resource "aws_default_subnet" "private" {
  availability_zone = data.aws_availability_zones.available.names[count.index]
  count = var.az_count
  tags = {
    Name = "Default subnet - private"
  }
}