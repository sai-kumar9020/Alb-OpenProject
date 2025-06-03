resource "aws_lb" "demo_alb" {
  name               = var.alb_name
  internal           = false
  load_balancer_type = "application"
  security_groups    = [var.security_group_id]
  subnets            = var.subnet_ids

  tags = {
    Name = "demo-alb"
  }
}

resource "aws_lb_target_group" "demo_tg" {
  name     = "demo-tg"
  port     = 8080
  protocol = "HTTP"
  vpc_id   = var.vpc_id

  health_check {
    interval            = 30
    path                = "/"
    timeout             = 5
    healthy_threshold   = 3
    unhealthy_threshold = 3
    matcher             = "200"
  }

 tags = {
    Name = "demo-tg"
  }
}

resource "aws_lb_listener" "demo_listener" {
  load_balancer_arn = aws_lb.demo_alb.arn
  port              = "80"
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.demo_tg.arn
  }
}

resource "aws_lb_target_group_attachment" "demo_tg_attachment" {
  target_group_arn = aws_lb_target_group.demo_tg.arn
  target_id        = var.target_id
  port             = 8080
}

output "alb_arn" {
  description = "The ARN of the ALB"
  value       = aws_lb.demo_alb.arn
}

output "target_group_arn" {
  description = "The ARN of the target group"
  value       = aws_lb_target_group.demo_tg.arn
}

output "listener_arn" {
  description = "The ARN of the listener"
  value       = aws_lb_listener.demo_listener.arn
}