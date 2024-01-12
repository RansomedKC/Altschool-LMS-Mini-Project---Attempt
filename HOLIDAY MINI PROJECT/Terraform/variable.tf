# variables.tf

variable "vpc_id" {
  description = "Default VPC ID"
  type        = string
  default     = "vpc-0b5aabe280121437d"
}

variable "instance1_name" {
  description = "Name tag for EC2 instance 1"
  type        = string
  default     = "lms1-practice"
}

variable "instance2_name" {
  description = "Name tag for EC2 instance 2"
  type        = string
  default     = "lms2-practice"
}

variable "instance3_name" {
  description = "Name tag for EC2 instance 3"
  type        = string
  default     = "lms3-practice"
}

variable "ami" {
  description = "AWS Ubuntu virtual machine image"
  type        = string
  default     = "ami-06878d265978313ca"
}

variable "keypair" {
  description = "Key pair for EC2 instances"
  type        = string
  default     = "ansiblekeys"
}

variable "subnet_id" {
  description = "Public subnets IDs in the default VPC"
  type        = list(any)
  default     = ["subnet-0de160f0944ddea3a", "subnet-0586de2e0c8cc7eaa", "subnet-XXXXXXX"]
}

variable "vpc_sg_id" {
  description = "Default VPC security group"
  type        = string
  default     = "vpc-0b5aabe280121437d"
}

variable "ssl_certificate" {
  description = "ARN of the SSL certificate"
  type        = string
  default     = "arn:aws:acm:us-east-1:336078645485:certificate/b217008e-31fe-42d5-aa47-eeedca3fcf1f"
}

variable "zone_id" {
  description = "Route 53 Hosted Zone ID"
  type        = string
  default     = "Z0250793JO3W7INOVM5H"
}

variable "domain_name" {
  description = "Hosted Zone Name"
  type        = string
  default     = "altschool.bukolatestimony.me"
}


# variables.tf

variable "vpc_id" {
  description = "Default VPC ID"
  type        = string
  default     = "vpc-0b5aabe280121437d"
}

variable "instance1_name" {
  description = "Name tag for EC2 instance 1"
  type        = string
  default     = "lms1-practice"
}

variable "instance2_name" {
  description = "Name tag for EC2 instance 2"
  type        = string
  default     = "lms2-practice"
}

variable "instance3_name" {
  description = "Name tag for EC2 instance 3"
  type        = string
  default     = "lms3-practice"
}

variable "ami" {
  description = "AWS Ubuntu virtual machine image"
  type        = string
  default     = "ami-06878d265978313ca"
}

variable "keypair" {
  description = "Key pair for EC2 instances"
  type        = string
  default     = "ansiblekeys"
}

variable "subnet_id" {
  description = "Public subnets IDs in the default VPC"
  type        = list(any)
  default     = ["subnet-0de160f0944ddea3a", "subnet-0586de2e0c8cc7eaa", "subnet-0586de2e0c8cc"]
}

variable "vpc_sg_id" {
  description = "Default VPC security group"
  type        = string
  default     = "vpc-0b5aabe280121437d"
}

variable "ssl_certificate" {
  description = "ARN of the SSL certificate"
  type        = string
  default     = "arn:aws:acm:us-east-1:336078645485:certificate/b217008e-31fe-42d5-aa47-eeedca3fcf1f"
}

variable "zone_id" {
  description = "Route 53 Hosted Zone ID"
  type        = string
  default     = "Z0250793JO3W7INOVM5H"
}

variable "domain_name" {
  description = "Hosted Zone Name"
  type        = string
  default     = "altschool.ransomed.me"
}

