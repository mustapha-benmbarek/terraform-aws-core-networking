resource "aws_vpc_peering_connection" "this" {
  for_each      = var.core-vpc-peerings
  vpc_id        = var.core-vpcs[each.value.requester-vpc-name].id
  peer_owner_id = each.value.accepter-account-id
  peer_region   = each.value.accepter-region
  peer_vpc_id   = var.core-vpcs[each.value.accepter-vpc-name].id
  tags = {
    Name = each.key
  }
}

/*
resource "aws_vpc_peering_connection" "this" {
  for_each = var.core-vpc-peerings
}
resource "aws_vpc_peering_connection_accepter" "this" {
  for_each = var.core-vpc-peerings
}
resource "aws_vpc_peering_connection_options" "this" {
  for_each = aws_vpc_peering_connection.this.ids

  vpc_peering_connection_id = each.value.peer.id

  requester {
    allow_remote_vpc_dns_resolution = each.value.accepter-allow-dns-resolution
  }
  accepter {
    allow_remote_vpc_dns_resolution = each.value.accepter-allow-dns-resolution
  }
}

*/
