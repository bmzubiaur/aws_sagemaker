variable "subnet_id" {
  type        = string
  description = "The ID of the subnets to use for the notebook"
}

variable "vpc_default_sec_group" {
  type        = string
  description = "The VPC's default security group"
}
