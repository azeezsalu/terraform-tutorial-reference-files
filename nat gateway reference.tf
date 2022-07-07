# allocate elastic ip. this eip will be used for the nat-gateway in the public subnet az1 
resource "aws_eip" "eip_for_nat_gateway_az1" {
  vpc    = 

  tags   = {
    Name = 
  }
}

# allocate elastic ip. this eip will be used for the nat-gateway in the public subnet az2
resource "aws_eip" "eip_for_nat_gateway_az2" {
  vpc    = 

  tags   = {
    Name = 
  }
}

# create nat gateway in public subnet az1
resource "aws_nat_gateway" "nat_gateway_az1" {
  allocation_id = 
  subnet_id     = 

  tags   = {
    Name = 
  }

  # to ensure proper ordering, it is recommended to add an explicit dependency
  depends_on = 
}

# create nat gateway in public subnet az2
resource "aws_nat_gateway" "nat_gateway_az2" {
  allocation_id = 
  subnet_id     = 

  tags   = {
    Name = 
  }

  # to ensure proper ordering, it is recommended to add an explicit dependency
  # on the internet gateway for the vpc.
  depends_on = 
}

# create private route table az1 and add route through nat gateway az1
resource "aws_route_table" "private_route_table_az1" {
  vpc_id            = 

  route {
    cidr_block      = 
    nat_gateway_id  = 
  }

  tags   = {
    Name = 
  }
}

# associate private app subnet az1 with private route table az1
resource "aws_route_table_association" "private_app_subnet_az1_route_table_az1_association" {
  subnet_id         = 
  route_table_id    = 
}

# associate private data subnet az1 with private route table az1
resource "aws_route_table_association" "private_data_subnet_az1_route_table_az1_association" {
  subnet_id         = 
  route_table_id    = 
}

# create private route table az2 and add route through nat gateway az2
resource "aws_route_table" "private_route_table_az2" {
  vpc_id            = 

  route {
    cidr_block      = 
    nat_gateway_id  = 
  }

  tags   = {
    Name = 
  }
}

# associate private app subnet az2 with private route table az2
resource "aws_route_table_association" "private_app_subnet_az2_route_table_az2_association" {
  subnet_id         = 
  route_table_id    = 
}

# associate private data subnet az2 with private route table az2
resource "aws_route_table_association" "private_data_subnet_az2_route_table_az2_association" {
  subnet_id         = 
  route_table_id    = 
}