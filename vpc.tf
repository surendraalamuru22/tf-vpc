resource "aws_vpc" "main" {
  cidr_block = var.cidr_block
}

module "additional_vpc_cidr" {
  for_each = var.vpc
  source = "./additional_vpc_cidr"
  additional_vpc_cidr = var.additional_vpc_cidr
  vpc_id = [for k, v in aws_vpc.main : v.id]
}
