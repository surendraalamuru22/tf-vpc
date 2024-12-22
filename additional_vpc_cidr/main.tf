resource "aws_vpc_ipv4_cidr_block_association" "additional_cidr" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "172.20.0.0/16"
}