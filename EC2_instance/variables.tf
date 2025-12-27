variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

variable "key_name" {
  description = "Name of the existing AWS key pair"
  type        = string
}

variable "base_ami" {
  description = "Base AMI ID for the first EC2 instance"
  type        = string
}