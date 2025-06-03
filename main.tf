
module "vpc" {
  source = "./modules/vpc"
  vpc_cidr = var.vpc_cidr
  public_subnet_a_cidr = var.public_subnet_a_cidr
  public_subnet_b_cidr = var.public_subnet_b_cidr
  availability_zone_a = var.availability_zone_a
  availability_zone_b = var.availability_zone_b
}

module "ec2" {
  source = "./modules/ec2"
  ami_id = var.ami_id
  instance_type = var.instance_type
  subnet_id = module.vpc.public_subnet_a_id
  vpc_id = module.vpc.vpc_id
  user_data = "user_data.sh"
}

module "alb" {
  source = "./modules/alb"
  alb_name = var.alb_name
  security_group_id = module.ec2.security_group_id
  subnet_ids = [module.vpc.public_subnet_a_id, module.vpc.public_subnet_b_id]
  vpc_id = module.vpc.vpc_id
  target_id = module.ec2.instance_id
}