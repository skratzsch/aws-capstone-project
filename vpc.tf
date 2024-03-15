resource "aws_vpc" "capstone-main" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags = {
    Name = "Capstone-VPC"
  }
}

resource "aws_subnet" "capstone-subnet-1" {
  vpc_id            = aws_vpc.capstone-main.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "eu-central-1a"
  tags = {
    Name = "Capstone-VPC-Subnet-1"
  }
}

resource "aws_subnet" "capstone-subnet-2" {
  vpc_id            = aws_vpc.capstone-main.id
  cidr_block        = "10.0.2.0/24"
  availability_zone = "eu-central-1b"
  tags = {
    Name = "Capstone-VPC-Subnet-2"
  }
}

resource "aws_internet_gateway" "capstone-igw" {
  vpc_id = aws_vpc.capstone-main.id

  tags = {
    Name = "Capstone-Internet-Gateway"
  }
}

resource "aws_route_table" "capstone-rt" {
  vpc_id = aws_vpc.capstone-main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.capstone-igw.id
  }

  tags = {
    Name = "Capstone-Route-Table"
  }
}

resource "aws_route_table_association" "capstone-rta-subnet-1" {
  subnet_id      = aws_subnet.capstone-subnet-1.id
  route_table_id = aws_route_table.capstone-rt.id
}

resource "aws_route_table_association" "capstone-rta-subnet-2" {
  subnet_id      = aws_subnet.capstone-subnet-2.id
  route_table_id = aws_route_table.capstone-rt.id
}
