resource "aws_vpn_gateway" "this" {
  for_each        = var.core-vpn-virtual-private-gateways
  amazon_side_asn = each.value.asn
  vpc_id          = var.core-vpcs[each.value.vpc-name].id != "" ? var.core-vpcs[each.value.vpc-name].id : null
  tags = {
    Name = each.key
  }
}
