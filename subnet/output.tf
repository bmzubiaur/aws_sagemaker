output "db_subnet_id" {
  value = aws_db_subnet_group.db_main.id
}

output "subnet_id" {
  value = aws_subnet.main.id
}
