
# Outputs for instance1
output "instance1_public_ip" {
  description = "Public IP address of EC2 instance 1"
  value       = aws_instance.app_server1.public_ip
}

output "instance1_public_dns" {
  description = "Public DNS of EC2 instance 1"
  value       = aws_instance.app_server1.public_dns
}

# Outputs for instance2
output "instance2_public_ip" {
  description = "Public IP address of EC2 instance 2"
  value       = aws_instance.app_server2.public_ip
}

output "instance2_public_dns" {
  description = "Public DNS of EC2 instance 2"
  value       = aws_instance.app_server2.public_dns
}

# Outputs for instance3
output "instance3_public_ip" {
  description = "Public IP address of EC2 instance 3"
  value       = aws_instance.app_server3.public_ip
}

output "instance3_public_dns" {
  description = "Public DNS of EC2 instance 3"
  value       = aws_instance.app_server3.public_dns
}

# Outputs for elastic load balancer
output "alb_dns_name" {
  description = "DNS name of the Application Load Balancer"
  value       = aws_lb.application_load_balancer.dns_name
}










  