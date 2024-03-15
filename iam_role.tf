/* resource "aws_iam_role" "capstone-github-actions" {
  name = "Capstone-GitHub-Actions-Terraform-Role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Principal = {
          Service = "ec2.amazonaws.com"
        }
      },
    ]
  })
}

resource "aws_iam_role_policy" "capstone-github-actions-policy" {
  name = "Capstone-GitHub-Actions-Policy"
  role = aws_iam_role.capstone-github-actions.id

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "ec2:*",
          "dynamodb:*",
          "elasticloadbalancing:*",
        ]
        Effect   = "Allow"
        Resource = "*"
      },
    ]
  })
}
*/
