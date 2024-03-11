resource "aws_lb" "app_lb" {
  name               = "capstone-app-lb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.capstone-allow-web.id]
  subnets            = [aws_subnet.capstone-subnet-1.id, aws_subnet.capstone-subnet-2.id]

  enable_deletion_protection = false

  tags = {
    Name = "App-Load-Balancer"
  }
}
