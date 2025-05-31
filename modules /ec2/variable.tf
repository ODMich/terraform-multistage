variable "ami_id" {
  type        = string
  description = "AMI to use for the instance"
}

variable "instance_type" {
  type        = string
  description = "EC2 instance type"
}

variable "subnet_id" {
  type        = string
  description = "Subnet to launch the instance in"
}

variable "name" {
  type        = string
  description = "Name tag for the instance"
}

variable "environment" {
  type        = string
  description = "Environment name"
}
