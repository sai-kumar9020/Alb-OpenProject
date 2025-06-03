
variable "region" {
  description = "The AWS region to create resources in"
  default     = "us-east-1"
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  default     = "10.0.0.0/16"
}

variable "public_subnet_a_cidr" {
  description = "The CIDR block for the first public subnet"
  default     = "10.0.1.0/24"
}

variable "public_subnet_b_cidr" {
  description = "The CIDR block for the second public subnet"
  default     = "10.0.2.0/24"
}

variable "availability_zone_a" {
  description = "The availability zone for the first public subnet"
  default     = "us-east-1a"
}

variable "availability_zone_b" {
  description = "The availability zone for the second public subnet"
  default     = "us-east-1b"
}

variable "ami_id" {
  description = "The AMI ID for the EC2 instance"
  default     = "ami-084568db4383264d4"
}

variable "instance_type" {
  description = "The instance type for the EC2 instance"
  default     = "t2.medium"
}

variable "alb_name" {
  description = "The name of the ALB"
  default     = "demo-alb"
}
