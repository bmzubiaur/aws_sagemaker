resource "aws_db_instance" "default" {
  allocated_storage    = 10
  engine               = "sqlserver-ex"
  instance_class       = "db.t3.small"
  username             = var.database_username
  password             = var.database_password
}
