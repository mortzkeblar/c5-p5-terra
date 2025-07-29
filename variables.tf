
variable "prefix" {
  type        = string
  description = "Abreviatura de la organización o prefijo general para nombres"
}

variable "project" {
  type        = string
  description = "Nombre del proyecto"
}

variable "environment" {
  type        = string
  description = "Ambiente de despliegue"
}

variable "region" {
  type        = string
  description = "Región de AWS"
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
  type = string
}

variable "organization" {
  type    = string
  default = "Mikroways"
}


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

output "vpc_id" {
  value = module.network.vpc_id
}

output "public_subnet_ids" {
  value = module.network.public_subnet_ids
}

output "ec2_instance_public_ip" {
  value = module.instance.instance_public_ip
}

