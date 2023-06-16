/*Resource creation: Virtual Subnet*/
resource "aws_subnet" "this" {
  for_each          = var.core-vpc-subnets
  vpc_id            = var.core-vpcs[each.value.vpc-name].id
  cidr_block        = each.value.cidr-block-ipv4
  ipv6_cidr_block   = each.value.cidr-block-ipv6 != "" ? each.value.cidr-block-ipv6 : null
  availability_zone = each.value.availability-zone
  tags = {
    Name = each.key
  }
}
