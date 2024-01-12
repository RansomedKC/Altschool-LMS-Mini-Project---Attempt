# Create an application load balancer for the first two instances
resource "aws_lb" "application_load_balancer" {
  name                       = "ransomed-Application-LB"
  internal                   = false
  load_balancer_type         = "application"
  security_groups            = [aws_security_group.alb-security-group.id]
  enable_deletion_protection = false
  subnets                    = [var.subnet_id[0], var.subnet_id[1]]

  tags = {
    Name = "ransomed Application-LB"
  }
}

# Create a listener on port 80 with redirect action
resource "aws_lb_listener" "alb_http_listener" {
  load_balancer_arn = aws_lb.application_load_balancer.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type = "redirect"

    redirect {
      port        = 443
      protocol    = "HTTPS"
      status_code = "HTTP_301"
    }
  }
}

# Create a listener on port 443 with forward action for the first two instances
resource "aws_lb_listener" "alb_https_listener" {
  load_balancer_arn = aws_lb.application_load_balancer.arn
  port              = 443
  protocol          = "HTTPS"
  ssl_policy        = "ELBSecurityPolicy-2016-08"
  certificate_arn   = var.ssl_certificate

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.alb_target_group.arn
  }
}

# Create a target group for the third instance
resource "aws_lb_target_group" "alb_target_group_instance3" {
  name     = "ransomed-EC2-Target-Group-Instance3"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.example_vpc.id

  health_check {
    path        = "/"
    protocol    = "HTTP"
    port        = 80
    unhealthy_threshold = 2
    timeout     = 3
  }
}

# Register the third instance with the target group
resource "aws_lb_target_group_attachment" "alb_target_group_attachment_instance3" {
  target_group_arn  = aws_lb_target_group.alb_target_group_instance3.arn
  target_id         = aws_instance.app_server3.id
}

# Create a listener on port 80 with forward action for the third instance
resource "aws_lb_listener" "alb_http_listener_instance3" {
  load_balancer_arn = aws_lb.application_load_balancer.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.alb_target_group_instance3.arn
  }
}


