resource "aws_vpc" "this" {
  for_each             = var.core-vpcs
  cidr_block           = each.value.cidr-block
  enable_dns_hostnames = each.value.dns-hostnames
  enable_dns_support   = each.value.dns-support
  instance_tenancy     = each.value.tenancy
  tags = {
    Name = each.key
  }
}

