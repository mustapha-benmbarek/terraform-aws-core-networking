resource "aws_ec2_managed_prefix_list" "this" {
  for_each       = var.core-vpc-managed-prefix-lists
  name           = each.value.name
  address_family = each.value.ip-address-family
  max_entries    = each.value.ip-max-entries

  dynamic "entry" {
    for_each = each.value.ip-entries
    content {
      cidr        = entry.value["cidr"]
      description = entry.value["description"]
    }
  }
}
