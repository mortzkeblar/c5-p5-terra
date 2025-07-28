output "vpc_id" {
  value = aws_vpc.main.id
}

output "public_subnet_ids" {
  value = [
    for subnet in aws_subnet.public_subnets : {
      id         = subnet.id
      cidr_block = subnet.cidr_block
    }
  ]
}

output "security_group_id" {
  value = aws_security_group.main.id
}

