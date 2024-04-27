resource "aws_subnet" "TestBank-PublicSubnet-1" {
  vpc_id                  = aws_vpc.TestBank.id
  cidr_block              = var.Public_Subnet1_cidr
  availability_zone       = var.az1
  map_public_ip_on_launch = true
  tags = {
    Name = var.Public_Subnet1_name
  }
}

resource "aws_subnet" "TestBank-PublicSubnet-2" {
  vpc_id                  = aws_vpc.TestBank.id
  cidr_block              = var.Public_Subnet2_cidr
  availability_zone       = var.az2
  map_public_ip_on_launch = true
  tags = {
    Name = var.Public_Subnet2_name
  }
}

resource "aws_subnet" "TestBank-PublicSubnet-3" {
  vpc_id                  = aws_vpc.TestBank.id
  cidr_block              = var.Public_Subnet3_cidr
  availability_zone       = var.az1
  map_public_ip_on_launch = true
  tags = {
    Name = var.Public_Subnet3_name
  }
}

resource "aws_subnet" "TestBank-PublicSubnet-4" {
  vpc_id                  = aws_vpc.TestBank.id
  cidr_block              = var.Public_Subnet4_cidr
  availability_zone       = var.az2
  map_public_ip_on_launch = true
  tags = {
    Name = var.Public_Subnet4_name
  }
}

resource "aws_subnet" "TestBank-PrivateSubnet-1" {
  vpc_id            = aws_vpc.TestBank.id
  cidr_block        = var.Private_Subnet1_cidr
  availability_zone = var.az1
  tags = {
    Name = var.Private_Subnet1_name
  }
}
resource "aws_subnet" "TestBank-PrivateSubnet-2" {
  vpc_id            = aws_vpc.TestBank.id
  cidr_block        = var.Private_Subnet2_cidr
  availability_zone = var.az1
  tags = {
    Name = var.Private_Subnet2_name
  }
}


