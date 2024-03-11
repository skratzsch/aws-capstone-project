resource "aws_dynamodb_table" "capstone-table" {
  name           = "CapstoneTable"
  billing_mode   = "PROVISIONED"
  read_capacity  = 5
  write_capacity = 5
  hash_key       = "id"

  attribute {
    name = "id"
    type = "S"
  }

  tags = {
    Name = "Capstone-DynamoDB-Table"
  }
}

