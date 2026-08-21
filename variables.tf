variable "aws_region" {
  description = "Target AWS Region"
  type        = string
  default     = "ap-south-1"
}

variable "ami_id" {
  description = "The AMI ID for the EC2 instance"
  type        = string
  default     = "ami-01a00762f46d584a1"
}

variable "instance_type" {
  description = "Instance type to launch"
  type        = string
  default     = "t2.micro"
}

variable "key_name" {
  description = "EC2 Key Pair name"
  type        = string
  default     = "first-ec2"
}

variable "environment" {
  description = "Target Environment"
  type        = string
  default     = "dev"
}