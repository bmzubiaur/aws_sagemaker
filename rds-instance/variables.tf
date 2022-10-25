variable "database_username" {
  type        = string
  description = "database username"
}

variable "database_password" {
  type        = string
  description = "database password"
}

variable "db_subnet_id" {
  type        = string
  description = "The ID of the DB subnets group"
}
