/*Resource creation: Egress-only Internet Gateway*/
resource "aws_egress_only_internet_gateway" "this" {
  for_each = var.core-vpc-egress-only-internet-gateways
  vpc_id   = var.core-vpcs[each.value.vpc-name].id
  tags = {
    Name = each.key
  }
}
