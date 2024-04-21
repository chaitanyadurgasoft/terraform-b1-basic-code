resource "aws_vpc" "TestBank" {
  cidr_block           = var.vpc_cidr
  enable_dns_hostnames = true
  tags = {
    Name = var.vpc_name
  }
}

resource "aws_internet_gateway" "TestBank-IGW" {
  vpc_id = aws_vpc.TestBank.id
  tags = {
    Name = var.IGW
  }
}
