/*Resource creation: Virtual Private Cloud (VPC)*/
resource "aws_vpc" "this" {
  for_each                         = var.core-vpcs
  cidr_block                       = each.value.cidr-block-ipv4
  assign_generated_ipv6_cidr_block = each.value.cidr-block-ipv6
  enable_dns_hostnames             = each.value.dns-hostnames
  enable_dns_support               = each.value.dns-support
  instance_tenancy                 = each.value.tenancy
  tags = {
    Name = each.key
  }
}

