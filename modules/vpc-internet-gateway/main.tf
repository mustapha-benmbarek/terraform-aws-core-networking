resource "aws_internet_gateway" "this" {
  for_each = var.core-vpc-internet-gateways
  vpc_id   = var.core-vpcs[each.value.vpc-name].id
  tags = {
    Name = each.key
  }
}
