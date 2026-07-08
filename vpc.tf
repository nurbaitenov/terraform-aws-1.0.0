# Create a VPC
resource "aws_vpc" "main" {
  cidr_block = var.cidr_blcok
  instance_tenancy = "default"
  enable_dns_hostnames = true   # needs for rds
  enable_dns_support = true     # needs for rds
}

resource "aws_subnet1" "public1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.public_subnet1
}

