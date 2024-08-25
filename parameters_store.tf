resource "aws_ssm_parameter" "vpc" {
  name  = format("/s%/vpc/vpc_id", var.project_name)
  type  = "String"
  value = aws_vpc.main.id
}

resource "aws_ssm_parameter" "private_subnet_1a" {
  name  = format("/s%/private_subnet_1a", var.project_name)
  type  = "String"
  value = aws_subnet.private_subnet_1a.id
}

resource "aws_ssm_parameter" "private_subnet_1b" {
  name  = format("/s%/private_subnet_1b", var.project_name)
  type  = "String"
  value = aws_subnet.private_subnet_1b.id
}

resource "aws_ssm_parameter" "private_subnet_1c" {
  name  = format("/s%/private_subnet_1c", var.project_name)
  type  = "String"
  value = aws_subnet.private_subnet_1c.id
}

resource "aws_ssm_parameter" "public_subnet_1a" {
  name  = format("/s%/public_subnet_1a", var.project_name)
  type  = "String"
  value = aws_subnet.public_subnet_1a.id
}

resource "aws_ssm_parameter" "public_subnet_1b" {
  name  = format("/s%/public_subnet_1b", var.project_name)
  type  = "String"
  value = aws_subnet.public_subnet_1b.id
}

resource "aws_ssm_parameter" "public_subnet_1c" {
  name  = format("/s%/public_subnet_1c", var.project_name)
  type  = "String"
  value = aws_subnet.public_subnet_1c.id
}

resource "aws_ssm_parameter" "database_subnet_1a" {
  name  = format("/s%/database_subnet_1a", var.project_name)
  type  = "String"
  value = aws_subnet.database_subnet_1a.id
}

resource "aws_ssm_parameter" "database_subnet_1b" {
  name  = format("/s%/database_subnet_1b", var.project_name)
  type  = "String"
  value = aws_subnet.database_subnet_1b.id
}

resource "aws_ssm_parameter" "database_subnet_1c" {
  name  = format("/s%/database_subnet_1c", var.project_name)
  type  = "String"
  value = aws_vpc.database_subnet_1c.id
}