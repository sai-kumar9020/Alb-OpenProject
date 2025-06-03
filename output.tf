output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.vpc.vpc_id
}

output "public_subnet_a_id" {
  description = "The ID of the first public subnet"
  value       = module.vpc.public_subnet_a_id
}

output "public_subnet_b_id" {
  description = "The ID of the second public subnet"
  value       = module.vpc.public_subnet_b_id
}

output "instance_id" {
  description = "The ID of the EC2 instance"
  value       = module.ec2.instance_id
}

output "security_group_id" {
  description = "The ID of the security group"
  value       = module.ec2.security_group_id
}

output "alb_arn" {
  description = "The ARN of the ALB"
  value       = module.alb.alb_arn
}

output "target_group_arn" {
  description = "The ARN of the target group"
  value       = module.alb.target_group_arn
}

output "listener_arn" {
  description = "The ARN of the listener"
  value       = module.alb.listener_arn
}