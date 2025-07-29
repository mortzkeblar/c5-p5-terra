locals {
  instance_name = "${var.naming_prefix}-ec2-1"
}


resource "aws_key_pair" "public_key" {
  public_key = var.public_key
}


resource "aws_instance" "ec2_instance" {
  ami                         = var.ami
  instance_type               = var.instance_type
  key_name                    = aws_key_pair.public_key.id
  associate_public_ip_address = true
  subnet_id                   = var.subnet_id
  vpc_security_group_ids      = var.security_groups_id

  tags = {
    Name = local.instance_name
  }
}
