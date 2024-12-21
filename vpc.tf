resource "aws_vpc" "demo" {
  cidr_block = "10.0.0.0/16"
}

provider "aws" {
  region = "us-east-1"
}


