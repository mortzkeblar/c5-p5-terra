locals {
  vpc            = "${var.naming_prefix}-vpc"
  igw            = "${var.naming_prefix}-igw"
  subnet_base    = "${var.naming_prefix}-subnet-public"
  rt_public      = "${var.naming_prefix}-rt-public"
  security_group = "${var.naming_prefix}-secgrp"
}


resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr_block
  tags = {
    Name = local.vpc
  }
}

resource "aws_subnet" "public_subnets" {
  count             = length(var.public_subnet_cidrs)
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.public_subnet_cidrs[count.index]
  availability_zone = var.availability_zones[count.index]

  tags = {
    Name = "${local.subnet_base}-${count.index + 1}"
  }
}

resource "aws_internet_gateway" "main" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = local.igw
  }
}

resource "aws_route_table" "public_routing_table" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.main.id
  }

  tags = {
    Name = local.rt_public
  }
}

resource "aws_route_table_association" "public_subnet_association" {
  count          = length(var.public_subnet_cidrs)
  subnet_id      = aws_subnet.public_subnets[count.index].id
  route_table_id = aws_route_table.public_routing_table.id
}

resource "aws_security_group" "main" {
  name        = local.security_group
  description = "Security rules for EC2 instance"
  vpc_id      = aws_vpc.main.id

  tags = {
    Name = local.security_group
  }
}

resource "aws_vpc_security_group_ingress_rule" "allow_ssh" {
  security_group_id = aws_security_group.main.id
  cidr_ipv4         = var.my_public_ip
  ip_protocol       = "tcp"
  from_port         = 22
  to_port           = 22
}

resource "aws_vpc_security_group_ingress_rule" "allow_http" {
  security_group_id = aws_security_group.main.id
  cidr_ipv4         = var.my_public_ip
  ip_protocol       = "tcp"
  from_port         = 80
  to_port           = 80
}

resource "aws_vpc_security_group_ingress_rule" "allow_icmp" {
  security_group_id = aws_security_group.main.id
  cidr_ipv4         = var.my_public_ip
  ip_protocol       = "icmp"
  from_port         = -1
  to_port           = -1
}

