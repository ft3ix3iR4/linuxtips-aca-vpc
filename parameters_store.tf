resource "aws_ssm_parameter" "vpc" {
  name  = format("/%s/vpc/vpc_id", var.project_name)
  type  = "String"
  value = aws_vpc.main.id
}

resource "aws_ssm_parameter" "private_1a" {
<<<<<<< HEAD
  name  = format("/%s/vpc/subnet_private_1a", var.project_name)
  type  = "String"
  value = aws_subnet.private_1a.id
}

resource "aws_ssm_parameter" "private_1b" {
  name  = format("/%s/vpc/subnet_private_1b", var.project_name)
  type  = "String"
  value = aws_subnet.private_1b.id
}

resource "aws_ssm_parameter" "private_1c" {
  name  = format("/%s/vpc/subnet_private_1c", var.project_name)
  type  = "String"
  value = aws_subnet.private_1c.id
}

resource "aws_ssm_parameter" "public_1a" {
  name  = format("/%s/vpc/subnet_public_1a", var.project_name)
  type  = "String"
  value = aws_subnet.public_1a.id
}

resource "aws_ssm_parameter" "public_1b" {
  name  = format("/%s/vpc/subnet_public_1b", var.project_name)
  type  = "String"
  value = aws_subnet.public_1b.id
}

resource "aws_ssm_parameter" "public_1c" {
  name  = format("/%s/vpc/subnet_public_1c", var.project_name)
  type  = "String"
  value = aws_subnet.public_1c.id
}

resource "aws_ssm_parameter" "databases_1a" {
  name  = format("/%s/vpc/subnet_databases_1a", var.project_name)
  type  = "String"
  value = aws_subnet.databases_1a.id
}

resource "aws_ssm_parameter" "databases_1b" {
  name  = format("/%s/vpc/subnet_databases_1b", var.project_name)
  type  = "String"
  value = aws_subnet.databases_1b.id
}

resource "aws_ssm_parameter" "databases_1c" {
  name  = format("/%s/vpc/subnet_databases_1c", var.project_name)
  type  = "String"
  value = aws_subnet.databases_1c.id
=======
    name = format("/%s/vpc/subnet_private_1a", var.project_name)
    type = "String"
    value = aws_subnet.private_subnet_1a.id
}

resource "aws_ssm_parameter" "private_1b" {
    name = format("/%s/vpc/subnet_private_1b", var.project_name)
    type = "String"
    value = aws_subnet.private_subnet_1b.id
}

resource "aws_ssm_parameter" "private_1c" {
    name = format("/%s/vpc/subnet_private_1c", var.project_name)
    type = "String"
    value = aws_subnet.private_subnet_1c.id
}

resource "aws_ssm_parameter" "public_1a" {
    name = format("/%s/vpc/subnet_public_1a", var.project_name)
    type = "String"
    value = aws_subnet.public_subnet_1a.id
}

resource "aws_ssm_parameter" "public_1b" {
    name = format("/%s/vpc/subnet_public_1b", var.project_name)
    type = "String"
    value = aws_subnet.public_subnet_1b.id
}

resource "aws_ssm_parameter" "public_1c" {
    name = format("/%s/vpc/subnet_public_1c", var.project_name)
    type = "String"
    value = aws_subnet.public_subnet_1c.id
}

resource "aws_ssm_parameter" "databases_1a" {
    name = format("/%s/vpc/subnet_databases_1a", var.project_name)
    type = "String"
    value = aws_subnet.database_subnet_1a.id
}

resource "aws_ssm_parameter" "databases_1b" {
    name = format("/%s/vpc/subnet_databases_1b", var.project_name)
    type = "String"
    value = aws_subnet.ddatabase_subnet_1b.id
}

resource "aws_ssm_parameter" "databases_1c" {
    name = format("/%s/vpc/subnet_databases_1c", var.project_name)
    type = "String"
    value = aws_subnet.database_subnet_1c.id
>>>>>>> f180d832392ea469f2f9f57525fd07ce1ae18484
}