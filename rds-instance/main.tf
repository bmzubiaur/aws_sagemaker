resource "aws_db_instance" "default" {
  allocated_storage    = 20
  engine               = "sqlserver-ex"
  instance_class       = "db.t3.small"
  username             = var.database_username
  password             = var.database_password
  db_subnet_group_name  = aws_db_subnet_group.main.id
  skip_final_snapshot  = true
}
