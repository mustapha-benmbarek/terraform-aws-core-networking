/*Resource creation: DHCP Option Set*/
resource "aws_vpc_dhcp_options" "this" {
  for_each             = var.core-vpc-dhcp-option-sets
  domain_name          = each.value.domain-name
  domain_name_servers  = each.value.domain-name-servers
  ntp_servers          = each.value.ntp-servers
  netbios_name_servers = each.value.netbios-name-servers
  netbios_node_type    = each.value.netbios-node-type
  tags = {
    Name = each.key
  }
}

/*Resource association: DHCP Option Set*/
resource "aws_vpc_dhcp_options_association" "this_association" {
  for_each        = var.core-vpc-dhcp-option-sets
  vpc_id          = var.core-vpcs[each.value.vpc-name].id
  dhcp_options_id = aws_vpc_dhcp_options.this[each.value.name].id
}
