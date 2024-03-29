output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.vpc.vpc_id
}

output "private_subnets" {
  description = "List of IDs of private subnets"
  value       = [module.vpc.private_subnets]
}

output "public_subnets" {
  description = "List of IDs of public subnets"
  value       = [module.vpc.public_subnets]
}

output "intra_subnets" {
  description = "List of IDs of intra subnets"
  value       = [module.vpc.intra_subnets]
}

# NAT gateways
output "nat_public_ips" {
  description = "List of public Elastic IPs created for AWS NAT Gateway"
  value       = [module.vpc.nat_public_ips]
}

