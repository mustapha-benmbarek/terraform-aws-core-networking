resource "aws_nat_gateway" "this" {
  for_each          = var.core-vpc-nat-gateways
  subnet_id         = var.core-vpc-subnets[each.value.subnet-name].id
  connectivity_type = each.value.connectivity-type
  allocation_id     = (lower(each.value.connectivity-type) == "public" ? var.core-vpc-elastic-ips[each.value.elastic-ip-name].id : null)
  private_ip        = (lower(each.value.connectivity-type) == "private" ? (each.value.private-ip != "" ? each.value.private-ip : null) : null)
  tags = {
    Name = each.key
  }
}
