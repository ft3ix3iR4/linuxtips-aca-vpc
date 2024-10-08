resource "aws_eip" "vpc_eip_la" {
  domain = "vpc"
  tags = {
    Name = format("%s-eip-1a", var.project_name)
  }
}

resource "aws_nat_gateway" "nat_1a" {
  allocation_id = aws_eip.vpc_eip_la.id
  subnet_id     = aws_subnet.public_subnet_1a.id

  tags = {
    Name = format("%s-nat-1a", var.project_name)
  }
}


resource "aws_eip" "vpc_eip_lb" {
  domain = "vpc"
  tags = {
    Name = format("%s-eip-1b", var.project_name)
  }
}

resource "aws_nat_gateway" "nat_1b" {
  allocation_id = aws_eip.vpc_eip_lb.id
  subnet_id     = aws_subnet.public_subnet_1b.id

  tags = {
    Name = format("%s-nat-1b", var.project_name)
  }
}

resource "aws_eip" "vpc_eip_lc" {
  domain = "vpc"
  tags = {
    Name = format("%s-eip-1c", var.project_name)
  }
}

resource "aws_nat_gateway" "nat_1c" {
  allocation_id = aws_eip.vpc_eip_lc.id
  subnet_id     = aws_subnet.public_subnet_1c.id

  tags = {
    Name = format("%s-nat-1c", var.project_name)
  }
}