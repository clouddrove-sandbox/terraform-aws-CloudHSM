provider "aws" {
  region = "eu-west-1"
}

locals {
  name        = "CloudHSM"
  environment = "test"
}

module "cloudhsm" {
  source = "../.."

  cluster_name = local.name
  vpc_id       = var.vpc_id
  subnet_ids   = var.subnet_ids
  hsm_type     = "hsm1.medium"
  cluster_mode = "FIPS"
}