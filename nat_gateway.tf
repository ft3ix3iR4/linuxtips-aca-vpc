resource "aws_eip" "vpc_eip_la" {
  domain   = "vpc"
  tags = {
    Name = format("%s-eip-1a", var.project_name)
  }
}