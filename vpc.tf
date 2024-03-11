resource "aws_vpc" "capstone-main" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags = {
    Name = "Capstone-VPC"
  }
}

resource "aws_subnet" "capstone-subnet-1" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "eu-central-1a"
  tags = {
    Name = "Capstone-VPC-Subnet-1"
  }
}

resource "aws_subnet" "capstone-subnet-2" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.2.0/24"
  availability_zone = "eu-central-1b"
  tags = {
    Name = "Capstone-VPC-Subnet-2"
  }
}
