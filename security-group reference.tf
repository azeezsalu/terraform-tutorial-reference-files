# create security group for the application load balancer
resource "aws_security_group" "alb_security_group" {
  name        = "alb security group"
  description = "enable http/https access on port 80/443"
  vpc_id      = 

  ingress {
    description      = "http access"
    from_port        = 
    to_port          = 
    protocol         = 
    cidr_blocks      = 
  }

  ingress {
    description      = "https access"
    from_port        = 
    to_port          = 
    protocol         = 
    cidr_blocks      = 
  }

  egress {
    from_port        = 
    to_port          = 
    protocol         = 
    cidr_blocks      = 
  }

  tags   = {
    Name = 
  }
}

# create security group for the container
resource "aws_security_group" "ecs_security_group" {
  name        = "ecs security group"
  description = "enable http/https access on port 80/443 via alb sg"
  vpc_id      = 

  ingress {
    description      = "http access"
    from_port        = 
    to_port          = 
    protocol         = 
    security_groups  = 
  }

  ingress {
    description      = "https access"
    from_port        = 
    to_port          = 
    protocol         = 
    security_groups  = 
  }

  egress {
    from_port        = 
    to_port          = 
    protocol         = 
    cidr_blocks      = 
  }

  tags   = {
    Name = 
  }
}
