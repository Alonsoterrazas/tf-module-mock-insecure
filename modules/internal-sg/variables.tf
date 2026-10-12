variable "name" {
  description = "Sufijo del nombre del security group"
  type        = string
}

variable "vpc_id" {
  description = "VPC donde se crea el security group"
  type        = string
}

output "security_group_id" {
  value = aws_security_group.this.id
}
