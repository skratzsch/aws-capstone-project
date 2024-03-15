provider "aws" {
  region = "eu-central-1"
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }

  required_version = ">= 0.14"

  backend "s3" {
    bucket         = "tuwa-capstone-terraform-state"
    key            = "capstone-terraform-state/capstone-state-file.tfstate"
    region         = "eu-central-1"
    dynamodb_table = "tuwa-capstone-terraform-state-lock"
    encrypt        = true
  }
}
