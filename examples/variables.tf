variable "region" {
  default = "us-west-2"
}

variable "domain_name" {
  default = "opsmag.local"
}

variable "environemnt" {
  default = "Corp"
}

variable "org_name" {
  default = "IT"
}

variable "vpc_cidr" {
  default = "10.0.0.0/23"
}

variable "public_subnet_a" {
  default = "10.0.0.0/26"
}

variable "public_subnet_b" {
  default = "10.0.0.64/26"
}

variable "public_subnet_c" {
  default = "10.0.0.128/26"
}

variable "private_subnet_a" {
  default = "10.0.0.192/26"
}

variable "private_subnet_b" {
  default = "10.0.1.0/26"
}

variable "private_subnet_c" {
  default = "10.0.1.64/26"
}

variable "default_dns_server" {
  default = "10.0.0.2"
}

variable "ip_dc1_opsmag_local" {
  default = "10.1.12.10"
}

variable "ip_dc2_opsmag_local" {
  default = "10.1.16.10"
}

