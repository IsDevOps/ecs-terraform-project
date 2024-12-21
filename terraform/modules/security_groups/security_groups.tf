
resource "aws_security_group" "ecs_security_group" {
  vpc_id = var.vpc_id
  name        = "ecs-sg"
  description = "Allow ECS task traffic"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
