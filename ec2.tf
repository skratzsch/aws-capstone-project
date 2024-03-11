resource "aws_instance" "capstone-app-1" {
  ami           = "ami-03484a09b43a06725"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.capstone-subnet-1.id

  tags = {
    Name = "Capstone-app-1"
  }
}

resource "aws_instance" "capstone-app-2" {
  ami           = "ami-03484a09b43a06725"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.capstone-subnet-2.id

  tags = {
    Name = "Capstone-app-2"
  }
}
