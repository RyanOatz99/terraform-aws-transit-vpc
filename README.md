# Terraform module for AWS Transit VPC
Module that provisions Transit VPC as a component of modern company infrastructure. Full post and tutorial is here https://www.opsmag.com/aws/transit-vpc-in-aws

#### Module Features
  - Provisioning of VPC
  - 3 public subnets in each availability zone A, B, C
  - 3 private subnets in each availability zone A, B, C
  - 2 routing tables Public and Private
  - Default DHCP offset to be defined with DNS servers from corp network VPC.

#### Requirements
Terrform version 0.12+

#### Usage and instruction
Please reffer to Terraform structure and best practices at https://www.opsmag.com/terraform/terraform-structure-and-best-practices

```sh
$ terraform init
$ terraform plan
$ terraform apply
```
#### Version history
0.1.0 - Initial release

Author: [Boris Karaoglanov](https://www.opsmag.com/boris)
Webiste: [OpsMag.com](https://www.opsmag.com)
https://github.com/joemccann/dillinger/blob/master/KUBERNETES.md)