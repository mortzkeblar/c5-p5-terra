variable "naming_prefix" {
  description = "Prefijo base para el nombramiento de recursos"
  type        = string
}

variable "public_key" {
  description = "Clave pública SSH, solo se puede introducir un string de momento. Copiar el contenido de ~/.ssh/<key-name>.pub"
  type        = string
}

variable "ami" {
  description = "AMI de la instancia EC2"
  type        = string
  default     = "ami-08a6efd148b1f7504" # Amazon Linux 2023 Kernel 6.1 64 bits
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

variable "security_groups_id" {
  description = "ID de security groups"
  type        = list(string)
}


