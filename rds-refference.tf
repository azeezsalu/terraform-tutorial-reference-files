# configured aws provider with proper credentials
provider "aws" {
  region  = 
  profile = 
}


# create default vpc if one does not exit
resource "aws_default_vpc" "default_vpc" {

  tags = {
    Name = "default vpc"
  }
}


# use data source to get all avalablility zones in region
data "aws_availability_zones" "available_zones" {}


# create a default subnet in the first az if one does not exit
resource "aws_default_subnet" "subnet_az1" {
  availability_zone = 
}

# create a default subnet in the second az if one does not exit
resource "aws_default_subnet" "subnet_az2" {
  availability_zone = 
}

# create security group for the web server
resource "aws_security_group" "webserver_security_group" {
  name        = "webserver security group"
  description = "enable http access on port 80"
  vpc_id      = 

  ingress {
    description      = "http access"
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

# create security group for the database
resource "aws_security_group" "database_security_group" {
  name        = "database security group"
  description = "enable mysql/aurora access on port 3306"
  vpc_id      = 

  ingress {
    description      = "mysql/aurora access"
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


# create the subnet group for the rds instance
resource "aws_db_subnet_group" "database_subnet_group" {
  name         = 
  subnet_ids   = 
  description  = 

  tags   = {
    Name = 
  }
}


# create the rds instance
resource "aws_db_instance" "db_instance" {
  engine                  = 
  engine_version          = 
  multi_az                = 
  identifier              = 
  username                = 
  password                = 
  instance_class          = 
  allocated_storage       = 
  db_subnet_group_name    = 
  vpc_security_group_ids  = 
  availability_zone       = 
  db_name                 = 
  skip_final_snapshot     = 
}
