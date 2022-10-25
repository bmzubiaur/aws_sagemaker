resource "aws_db_instance" "default" {
  allocated_storage    = 10
  db_name              = "mydb"
  engine               = "sqlserver-ex"
  instance_class       = "db.t3.small"
  username             = var.database_username
  password             = var.datanase_password
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true
  tags = 
}
