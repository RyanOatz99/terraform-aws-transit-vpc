provider "aws" {
  region = var.region
}

module "vpc" {
  source = "../../modules/aws/vpc"

  name = var.domain_name

  cidr = var.vpc_cidr

  azs             = ["${var.region}a", "${var.region}b", "${var.region}c"]
  azs_latters     = ["a", "b", "c"]
  public_subnets  = [var.public_subnet_a, var.public_subnet_b, var.public_subnet_c]
  private_subnets = [var.private_subnet_a, var.private_subnet_b, var.private_subnet_c]

  create_database_subnet_group = false

  enable_nat_gateway = true
  single_nat_gateway = false

  enable_vpn_gateway = false

  enable_s3_endpoint       = true
  enable_dynamodb_endpoint = true

  enable_dns_hostnames = true
  enable_dns_support   = true

  enable_dhcp_options              = true
  dhcp_options_domain_name         = "${var.region}.compute.internal"
  dhcp_options_domain_name_servers = [var.default_dns_server]

  tags = {
    Owner       = var.org_name
    Environment = var.environemnt
    Name        = var.domain_name
  }
}