resource "aws_customer_gateway" "this" {
  for_each   = var.core-vpn-customer-gateways
  type       = each.value.type
  bgp_asn    = each.value.asn
  ip_address = each.value.ip-adress-ipv4 != "" ? each.value.ip-adress-ipv4 : null
  tags = {
    Name = each.key
  }
}