variable "vpc_name" {
  description = "Nombre de la VPC"
  type        = string
}

variable "organization" {
  type        = string
  description = "Nombre de la organización"
}


variable "public_key" {
  description = "Contenido de la clave pública SSH"
  type        = string
}

variable "ami" {
  description = "AMI de la instancia EC2"
  type        = string
  default     = "ami-08a6efd148b1f7504"
}

variable "instance_type" {
  description = "Tipo de instancia EC2"
  type        = string
  default     = "t2.micro"
}

variable "subnet_id" {
  description = "ID de la subred pública"
  type        = string
}

variable "security_group_id" {
  description = "ID del security group"
  type        = list(string)
}


