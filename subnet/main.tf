# Create a VPC
resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
}

#Create a Subnet
resource "aws_subnet" "main" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.0.0/24"
}

#Create a Subnet
resource "aws_subnet" "sec" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.1.0/24"
}


#Create a DB Subnet group
resource "aws_db_subnet_group" "db_main" {
  name       = "db_main"
  subnet_ids = [aws_subnet.main.id, aws_subnet.sec.id]
}
