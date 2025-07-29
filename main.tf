locals {
  naming_prefix = "${var.prefix}-${var.project}-${var.environment}-${var.region}"

  default_tags = {
    Project      = var.project
    Environment  = var.environment
    Organization = var.organization
  }
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
  required_version = "~> 1.10.0"

}

provider "aws" {
  region = var.region
  default_tags {
    tags = local.default_tags
  }
}



module "network" {
  source              = "./modules/network"
  naming_prefix       = local.naming_prefix
  public_subnet_cidrs = var.public_subnet_cidrs
  availability_zones  = var.availability_zones
  my_public_ip        = var.my_public_ip
}

module "instance" {
  source             = "./modules/instance"
  naming_prefix      = local.naming_prefix
  subnet_id          = module.network.public_subnet_ids[0].id
  security_groups_id = [module.network.security_group_id]
  public_key         = var.public_key
  ami                = var.ami
  instance_type      = var.instance_type
}

