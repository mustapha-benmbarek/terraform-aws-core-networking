/*Resource creation: EC2 Placement Group*/
resource "aws_placement_group" "this" {
  for_each = var.core-placement-groups
  name     = each.value.name
  strategy = each.value.strategy
  partition_count = each.value.partitions
   tags = {
    Name = each.key
  }
}
