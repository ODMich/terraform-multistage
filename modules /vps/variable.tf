variable "cidr_block" {
  type        = string
  description = "The CIDR block for the VPC"
}

variable "name" {
  type        = string
  description = "Name of the VPC"
}

variable "environment" {
  type        = string
  description = "The deployment environment"
}
