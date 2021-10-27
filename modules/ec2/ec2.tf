resource "aws_instance" "my-ec2" {
  ami = var.ami
  instance_type = var.instance_type
  availability_zone = var.availability_zone
  key_name = var.key_name

  tags = {
    Name ="my-${var.environment}-ec2"
  }

}
