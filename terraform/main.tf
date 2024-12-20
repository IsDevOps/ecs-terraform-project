module "vpc" {
  source       = "./modules/vpc"
  cidr_block   = "10.0.0.0/16"
  subnet_count = 2
}

module "ecs" {
  source            = "./modules/ecs"
  container_image   = "oseghale1/flask-app:latest"
  subnet_ids        = module.vpc.subnet_ids
  security_group_id = module.vpc.ecs_security_group_id
}

module "alb" {
  source            = "./modules/alb"
  vpc_id            = module.vpc.vpc_id
  subnet_ids        = module.vpc.subnet_ids
  security_group_id = module.vpc.ecs_security_group_id
}