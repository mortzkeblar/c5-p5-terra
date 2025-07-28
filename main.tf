terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}


module "network" {
  source              = "./modules/network"
  vpc_name            = var.vpc_name
  public_subnet_cidrs = var.public_subnet_cidrs
  availability_zones  = var.availability_zones
  my_public_ip        = var.my_public_ip
  organization        = var.organization
}

module "instance" {
  source            = "./modules/instance"
  #vpc_id            = module.network.vpc_id
  subnet_id         = module.network.public_subnet_ids[0].id
  security_group_id = [module.network.security_group_id]
  #key_name          = var.key_name
  public_key        = var.public_key
  ami               = var.ami
  instance_type     = var.instance_type
  vpc_name          = var.vpc_name
  organization      = var.organization
}

