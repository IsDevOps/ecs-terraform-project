module "vpc" {
  source       = "./terraform/modules/vpc"
  cidr_block   = "10.0.0.0/16"
  subnet_count = 2
}

module "ecs" {
  source            = "./terraform/modules/ecs"
  container_image   = "your-dockerhub-repo/flask-app:latest"
  subnet_ids        = module.networking.subnet_ids
  security_group_id = module.networking.ecs_security_group_id
}

module "alb" {
  source            = "./terraform/modules/alb"
  vpc_id            = module.networking.vpc_id
  subnet_ids        = module.networking.subnet_ids
  security_group_id = module.networking.ecs_security_group_id
}