terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.67.0"
    }
  }
}

# provider "aws" {
#   region = "ap-south-1"
# }

resource "aws_security_group" "demo_sg" {
  name = "demo-sg"

  tags = {
    Name = "Demo-hcp"
    CREATEDON = timestamp()
  }

}