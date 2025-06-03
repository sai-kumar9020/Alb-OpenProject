variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
}

variable "public_subnet_a_cidr" {
  description = "The CIDR block for the first public subnet"
  type        = string
}

variable "public_subnet_b_cidr" {
  description = "The CIDR block for the second public subnet"
  type        = string
}

variable "availability_zone_a" {
  description = "The availability zone for the first public subnet"
  type        = string
}

variable "availability_zone_b" {
  description = "The availability zone for the second public subnet"
  type        = string
}