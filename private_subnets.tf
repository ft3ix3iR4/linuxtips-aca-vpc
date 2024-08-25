resource "aws_subnet" "private_subnet_1a" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.0.0/20"
  availability_zone = format("%sa", var.region)

  tags = {
    Name = format("%s-private-subnet-1a", var.project_name)
  }
}

resource "aws_subnet" "private_subnet_1b" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.16.0/20"
  availability_zone = format("%sb", var.region)

  tags = {
    Name = format("%s-private-subnet-1b", var.project_name)
  }
}

resource "aws_subnet" "private_subnet_1c" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.32.0/20"
  availability_zone = format("%sc", var.region)

  tags = {
    Name = format("%s-private-subnet-1c", var.project_name)
  }
}

resource "aws_route_table" "private_internet_access_1a" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = format("%s-private-1a", var.project_name)
  }
}

resource "aws_route" "private_access_1a" {
  route_table_id         = aws_route_table.private_internet_access_1a.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_nat_gateway.nat_1a.id
}

resource "aws_route_table" "private_internet_access_1b" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = format("%s-private-1b", var.project_name)
  }
}

resource "aws_route" "private_access_1b" {
  route_table_id         = aws_route_table.private_internet_access_1b.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_nat_gateway.nat_1b.id
}

resource "aws_route_table" "private_internet_access_1c" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = format("%s-private-1c", var.project_name)
  }
}

resource "aws_route" "private_access_1c" {
  route_table_id         = aws_route_table.private_internet_access_1c.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_nat_gateway.nat_1c.id
}