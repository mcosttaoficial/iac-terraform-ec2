provider "aws" {
  region  = var.aws_region
  profile = var.aws_profile
}

module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  name = "teste-matheus-tf"

  ami                    = var.instance_ami
  instance_type          = var.instance_type
  key_name               = "key-matheuscosta"
  monitoring             = true
  subnet_id              = var.instance_subnet_id
  vpc_security_group_ids = var.security_group_id

  tags = var.instance_tags
}

module "security_group" {
  source = "./modules"
}

