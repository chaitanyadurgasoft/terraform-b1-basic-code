resource "aws_route_table" "TestBank-Public-Route" {
  vpc_id = aws_vpc.TestBank.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.TestBank-IGW.id
  }
  tags = {
    Name = var.Public_Route_Name
  }
  depends_on = [ aws_subnet.TestBank-PrivateSubnet-2 ]
}

resource "aws_route_table" "TestBank-Private-Route" {
  vpc_id = aws_vpc.TestBank.id
  # route {
  #   cidr_block = "0.0.0.0/0"
  #   gateway_id = aws_internet_gateway.TestBank-IGW.id
  # }
  tags = {
    Name = var.Private_Route_Name
  }
  depends_on = [ aws_route_table.TestBank-Public-Route ]
}

resource "aws_route_table_association" "TestBank-Public_route-Assoc-1" {
  subnet_id      = aws_subnet.TestBank-PublicSubnet-1.id
  route_table_id = aws_route_table.TestBank-Public-Route.id
  depends_on = [ aws_route_table.TestBank-Private-Route ]
}
resource "aws_route_table_association" "TestBank-Public_route-Assoc-2" {
  subnet_id      = aws_subnet.TestBank-PublicSubnet-2.id
  route_table_id = aws_route_table.TestBank-Public-Route.id
  depends_on = [ aws_route_table_association.TestBank-Public_route-Assoc-1 ]
}

resource "aws_route_table_association" "TestBank-Private_route-Assoc-1" {
  subnet_id      = aws_subnet.TestBank-PrivateSubnet-1.id
  route_table_id = aws_route_table.TestBank-Private-Route.id
  depends_on = [ aws_route_table_association.TestBank-Public_route-Assoc-2 ]
}
resource "aws_route_table_association" "TestBank-Private_route-Assoc-2" {
  subnet_id      = aws_subnet.TestBank-PrivateSubnet-2.id
  route_table_id = aws_route_table.TestBank-Private-Route.id
  depends_on = [ aws_route_table_association.TestBank-Private_route-Assoc-1 ]
}