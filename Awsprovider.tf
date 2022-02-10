# Terraform configuration file
# Fist block is always going to be provider block to be connected

provider "aws" {
  region     = "us-east-2"
  access_key = "AKIAZCNMPFZL62FUGQ2P"
  secret_key = "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"
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}
# resource block
resource "aws_instance" "Ed_terraform_EC21"{
ami = "ami-0b614a5d911900a9b"
instance_type = "t2.micro"
tags = {
  Name = "Ed_terraform_EC2_tag1"
}
}
