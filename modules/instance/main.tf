locals {
  instance_name = "${var.naming_prefix}-ec2-1"
}


resource "aws_key_pair" "public_key" {
  public_key = var.public_key
  #public_key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIHtsDTrBlj5M+jg+vqFoK6oHnmtLrbXWViBZOhWo4kex mortzkeb@gmail.com"
}


resource "aws_instance" "ec2_instance_1" {
  #ami           = "ami-08a6efd148b1f7504"  # Amazon Linux 2023 Kernel 6.1 64 bits
  ami = var.ami
  #instance_type = "t2.micro"
  instance_type = var.instance_type
  key_name = aws_key_pair.public_key.id
  associate_public_ip_address = true
  subnet_id = var.subnet_id
  vpc_security_group_ids = var.security_groups_id
  
  tags = {
    Name = local.instance_name
  }
}
