/*Resource creation: VPN Customer Gateway*/
resource "aws_customer_gateway" "this" {
  for_each        = var.core-vpn-customer-gateways
  type            = each.value.type
  bgp_asn         = each.value.asn
  ip_address      = each.value.address-ipv4 != "" ? each.value.address-ipv4 : null
  certificate_arn = each.value.certificate-arn
  device_name     = each.value.device-name
  tags = {
    Name = each.key
  }
}
