variable "vpc_name" {
  type        = string
  description = "Nombre de la VPC"
}

variable "organization" {
  type        = string
  description = "Nombre de la organización"
}

variable "vpc_cidr_block" {
  type        = string
  default     = "10.0.0.0/16"
  description = "CIDR de la VPC"
}

variable "public_subnet_cidrs" {
  type        = list(string)
  description = "Lista de CIDRs para las subredes públicas"
}

variable "availability_zones" {
  type        = list(string)
  description = "Zonas de disponibilidad"
}

variable "my_public_ip" {
  type        = string
  description = "Variable para definir tu propia IP pública, consultar https://ifconfig.me"
}

