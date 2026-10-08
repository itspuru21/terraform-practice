

provider "aws" {
  region = "ap-south-1"
}

resource "aws_security_group" "demo-sg" {
  name = var.sg_name

  tags = {
    Name = var.sg_name
  }

}

resource "aws_vpc_security_group_ingress_rule" "inbound-rl" {
  security_group_id = aws_security_group.demo-sg.id
  cidr_ipv4 = var.all_cidr
  from_port = 80
  ip_protocol = "http"
  to_port = 80
  
}

resource "aws_vpc_security_group_egress_rule" "outbound-rl" {
  security_group_id = aws_security_group.demo-sg.id
  cidr_ipv4 = var.all_cidr
  ip_protocol = "-1"
}