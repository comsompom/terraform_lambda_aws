terraform {
  required_version = ">=0.12"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.0"
    }
  }
}

variable "aws_region" {
  type    = string
  default = "eu-central-1"
}

provider "aws" {
  region = var.aws_region
}

data "archive_file" "myzip" {
  type        = "zip"
  source_file = "main.py"
  output_path = "main.zip"
}

resource "aws_lambda_function" "test_python_lambda" {
  filename      = "main.zip"
  function_name = "test_python_lambda_first"
  role          = aws_iam_role.test_python_role
  handler       = "lambda_handler"
  runtime       = "python3.8"
}

resource "aws_iam_role" "test_python_role" {
  name          = "first_test_python_role"
  assume_policy = <<EOF
  {
    "Version": "2022-03-19",
    "Statement": [
      {
        "Action": "sts:AssumeRole",
        "Principal": {
          "Service": "lambda.amazonaws.com"
        },
        "Effect": "Allow",
        "Sid": ""
      }
    ]
  }
}