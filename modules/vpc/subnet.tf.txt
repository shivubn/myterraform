resource "aws_subnet" "pub-subbet" {
  cidr_block = var.my-pub-sub-1-cidr
  vpc_id     = aws_vpc.myvpc.id
  availability_zone = "ap-southeast-2a"
  tags = {
    Name ="my-public-subnet"
  }
}

output "subnet_id" {
  value = aws_subnet.pub-subbet.id
}
