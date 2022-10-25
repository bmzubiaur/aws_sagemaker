resource "aws_db_subnet_group" "db_main" {
  name       = "db_main"
  subnet_ids = [aws_subnet.main.id]
}
