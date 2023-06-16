/*Resource creation: Elastic IP Address*/
resource "aws_eip" "this" {
  for_each             = var.core-vpc-elastic-ips
  network_border_group = each.value.network-border-group
  public_ipv4_pool     = each.value.public-ipv4-pool
  address              = each.value.public-ipv4
  tags = {
    Name = each.key
  }
}
