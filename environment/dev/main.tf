provider "aws" {
  region = "ap-southeast-2"
  access_key = var.acess_key
  secret_key = var.secret_key

}

module "ec2" {
  source = "../../modules/ec2"
  ami    = var.ami
  availability_zone = var.availability_zone
  instance_type = var.instance_type
  key_name = var.key_name
  environment = var.environment
}

module "vpc" {
  source ="../../modules/vpc"
  cidr   = var.cidr
  environment = var.environment
  my-pub-sub-1-cidr = var.my-pub-sub-1-cidr
}

output "vpc_id" {
  value = module.vpc.vpc_id
}
output "vpc_arn" {
  value = module.vpc.vpc_arn
}
  output "subnet_id" {
    value = module.vpc.subnet_id

  }
