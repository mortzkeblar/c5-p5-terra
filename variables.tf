variable "vpc_name" {
  type    = string
}

variable "public_subnet_cidrs" {
  type    = list(string)
  default = ["10.0.101.0/24", "10.0.201.0/24"]
}

variable "availability_zones" {
  type    = list(string)
  default = ["us-east-1a", "us-east-1b"]
}

variable "my_public_ip" {
  type    = string
}

variable "organization" {
  type    = string
  default = "Mikroways"
}

#variable "key_name" {
#  type    = string
#  default = "mcanaza-public-key"
#}

variable "public_key" {
  type    = string
  default = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIHtsDTrBlj5M+jg+vqFoK6oHnmtLrbXWViBZOhWo4kex mortzkeb@gmail.com"
}

variable "ami" {
  type    = string
  default = "ami-08a6efd148b1f7504"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

# outputs.tf (root)
output "vpc_id" {
  value = module.network.vpc_id
}

output "public_subnet_ids" {
  value = module.network.public_subnet_ids
}

output "ec2_instance_public_ip" {
  value = module.instance.instance_public_ip
}

