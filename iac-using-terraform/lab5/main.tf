provider "aws" {
  region = var.region
}

resource "aws_key_pair" "udemy-keypair" {
  key_name   = "udemy-keypair"
  public_key = file(var.keypair_path)
}

module "security" {
  source = "./modules/security"
}

module "compute" {
  source                 = "./modules/compute"
  image_id               = var.amis[var.region]
  instance_type          = var.instance_type
  key_name               = aws_key_pair.udemy-keypair.key_name
  ec2_security_group_ids = [module.security.public_security_group_id]
}
