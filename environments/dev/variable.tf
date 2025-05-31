variable "aws_region" {
  type        = string
  description = "AWS region to deploy to"
}

variable "cidr_block" {
  type        = string
  description = "CIDR block for the VPC"
}

variable "vpc_name" {
  type        = string
  description = "Name of the VPC"
}

variable "environment" {
  type        = string
  description = "Environment label"
}

variable "subnet_cidr" {
  type        = string
  description = "CIDR for the EC2 subnet"
}

variable "az" {
  type        = string
  description = "Availability zone to deploy subnet/EC2"
}

variable "ami_id" {
  type        = string
  description = "AMI ID for EC2 instance"
}

variable "instance_type" {
  type        = string
  description = "Instance type"
}

variable "ec2_name" {
  type        = string
  description = "Name of the EC2 instance"
}
