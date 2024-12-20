resource "aws_alb" "main" {
  name            = "ecs-alb"
  security_groups = var.security_groups
  subnets         = var.public_subnets
}

resource "aws_alb_target_group" "main" {
  name     = "ecs-target-group"
  port     = 80
  protocol = "HTTP"
  vpc_id   = var.vpc_id
  target_type = "ip"
}


resource "aws_alb_listener" "http" {
  load_balancer_arn = aws_alb.main.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_alb_target_group.main.arn
  }
}
