resource "aws_vpc" "tftest" {
  cidr_block = var.cidr_block

  tags = {
    Name        = var.name
    Environment = var.environment
  }
}
