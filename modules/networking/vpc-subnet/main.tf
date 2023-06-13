resource "aws_subnet" "this" {
  for_each                        = var.core-vpc-subnets
  vpc_id                          = var.core-vpcs[each.value.vpc-name].id
  cidr_block                      = each.value.cidr-block-ipv4
  assign_ipv6_address_on_creation = each.value.cidr-block-ipv6
  availability_zone               = each.value.availability-zone
  tags = {
    Name = each.key
  }
}
