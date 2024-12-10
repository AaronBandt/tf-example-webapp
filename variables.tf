## Variables

variable "vpc_id" {
  description = "The VPC id"
  type        = string
  default     = "vpc-043cd5089cf16bd4e"
}

variable "ami_id" {
  description = "The id of the AMI to use"
  type        = string
  default     = "ami-0453ec754f44f9a4a"
}

variable "use1a_subnet_id" {
  default = "subnet-0e4d4a0c3249a15cf"
  type    = string
}

## data

data "aws_vpc" "main" {
  id = var.vpc_id
}

data "aws_subnet" "main" {
  id = var.use1a_subnet_id
}

data "aws_subnets" "main" {
  filter {
    name   = "vpc-id"
    values = [var.vpc_id]
  }
}

## outputs

output "lb_hostname" {
  description = "The LB DNS name."
  value       = aws_lb.web_lb.dns_name
}

