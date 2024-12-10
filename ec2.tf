# Security Group for EC2 Instance
resource "aws_security_group" "ec2_sg" {
  vpc_id = var.vpc_id

  ingress {
    from_port       = 80
    to_port         = 80
    protocol        = "tcp"
    security_groups = [aws_security_group.alb_sg.id]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "ec2-sg"
  }
}

# Launch Template for EC2 Instance
resource "aws_instance" "web_server" {
  ami           = var.ami_id
  instance_type = "t2.micro"
  subnet_id     = data.aws_subnets.main.ids[0]
  security_groups = [
    aws_security_group.ec2_sg.id
  ]

  user_data = <<-EOF
              #!/bin/bash
              yum update -y
              yum install -y httpd
              systemctl start httpd
              systemctl enable httpd
              echo "<h1>Welcome to the web app!</h1>" > /var/www/html/index.html
              EOF

  tags = {
    Name = "web-server"
  }
}
