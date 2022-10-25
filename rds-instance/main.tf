#Creat DB instance
resource "aws_db_instance" "default" {
  allocated_storage    = 20
  engine               = "sqlserver-ex"
  instance_class       = "db.t3.small"
  username             = var.database_username
  password             = var.database_password
  db_subnet_group_name = var.db_subnet_id
  skip_final_snapshot  = true
}
