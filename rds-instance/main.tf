#Create a DB Subnet group
resource "aws_db_subnet_group" "db_main" {
  name       = "db_main"
  subnet_ids = [aws_subnet.main.id]
}

#Creat DB instance
resource "aws_db_instance" "default" {
  allocated_storage    = 20
  engine               = "sqlserver-ex"
  instance_class       = "db.t3.small"
  username             = var.database_username
  password             = var.database_password
  db_subnet_group_name = main.aws_db_subnet_group.db_main.id
  skip_final_snapshot  = true
}
