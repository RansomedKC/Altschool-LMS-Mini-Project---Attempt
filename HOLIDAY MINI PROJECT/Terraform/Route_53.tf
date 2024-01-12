# Create a record set in Route 53 for the subdomain
resource "aws_route53_record" "record-subdomain" {
  zone_id = var.zone_id
  name    = "altschool.ransomed.me"
  type    = "A"

  alias {
    name                   = aws_lb.application_load_balancer.dns_name
    zone_id                = aws_lb.application_load_balancer.zone_id
    evaluate_target_health = true
  }
}

# Create a record set in Route 53 for the domain alias
resource "aws_route53_record" "record-domain" {
  zone_id = var.zone_id
  name    = "www.altschool.ransomed.me"
  type    = "A"

  alias {
    name                   = aws_lb.application_load_balancer.dns_name
    zone_id                = aws_lb.application_load_balancer.zone_id
    evaluate_target_health = true
  }
}



