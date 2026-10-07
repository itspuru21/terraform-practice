

provider "aws" {
  region = "ap-south-1"
}

resource "aws_security_group" "name" {
  name = var.sg_name

  tags = {
    Name = var.sg_name
  }

}