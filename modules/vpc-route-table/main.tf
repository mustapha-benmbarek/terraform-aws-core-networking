
resource "aws_route_table" "this" {
  for_each = var.core-vpc-managed-prefix-lists
  name     = each.value.name
  vpc_id   = var.core-vpcs[each.value.vpc-name].id

  dynamic "route" {
    for_each = each.value.routes
    content {
      /*Destination*/
      cidr_block                 = route.value["destination-cidr-ipv4"]
      ipv6_cidr_block            = route.value["destination-cidr-ipv6 "]
      destination_prefix_list_id = route.value["destination-managed-prefix-list"]

      /*Target*/
      gateway_id = route.value["target-internet-gateway-name"]
      //gateway_id = route.value["target-virtual-private-gateway-name"]
      nat_gateway_id            = route.value["target-nat-gateway-name"]
      egress_only_gateway_id    = route.value["target-egress-only-internet-gateway-name"]
      transit_gateway_id        = route.value["target-transit-gateway-name"]
      vpc_endpoint_id           = route.value["target-vpc-endpoint-name"]
      vpc_peering_connection_id = route.value["target-vpc-peering-connection-name"]
      carrier_gateway_id        = route.value["target-carrier-gateway-name"]
      core_network_arn          = route.value["target-core network-arn"]
      local_gateway_id          = route.value["target-outpost-local-gateway-name"]
      network_interface_id      = route.value["target-vpc-network-interface-name"]
    }
  }
  tags = {
    Name = each.key
  }
}



/*

resource "aws_route_table_association" "a" {
  for_each = var.core-vpc-managed-prefix-lists
route_table_id = aws_route_table.bar.id
each.value.route-table-name

subnet_id      = aws_subnet.foo.id
each.value.subnet-name

  
  
}
resource "aws_route_table_association" "b" {
  gateway_id     = aws_internet_gateway.foo.id
  route_table_id = aws_route_table.bar.id
}

*/
