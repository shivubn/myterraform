resource "aws_vpc" "myvpc" {
  cidr_block           = var.cidr
  instance_tenancy     = "default"
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags = {
    Name = "my-${var.environment}-vpc"
  }
}

output "vpc_id" {
  value = aws_vpc.myvpc.id
}

output "vpc_arn" {
  value = aws_vpc.myvpc.arn
}
