provider "aws" {
  region  = var.aws_region
  profile = "prod-profile" 
}

module "vpc" {
  source      = "../../modules/vpc"
  cidr_block  = var.cidr_block
  name        = var.vpc_name
  environment = var.environment
}

resource "aws_subnet" "main_subnet" {
  vpc_id                  = module.vpc.vpc_id
  cidr_block              = var.subnet_cidr
  availability_zone       = var.az
  map_public_ip_on_launch = false

  tags = {
    Name        = "${var.environment}-subnet"
    Environment = var.environment
  }
}

module "ec2" {
  source         = "../../modules/ec2"
  ami_id         = var.ami_id
  instance_type  = var.instance_type
  subnet_id      = aws_subnet.main_subnet.id
  name           = var.ec2_name
  environment    = var.environment
}
