provider "aws" {
  region = var.region
}

module "network" {
  source             = "./modules/networking"
  availability_zones = var.availability_zones
  vpc_cidr           = var.vpc_cidr
  public_subnet_ips  = var.public_subnet_ips
  private_subnet_ips = var.private_subnet_ips
  vpc_name           = var.vpc_name
}
