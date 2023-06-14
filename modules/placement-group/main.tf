resource "aws_placement_group" "this" {
  for_each = var.core-placement-groups
  name     = each.value.name
  strategy = each.value.strategy
  tags = {
    Name = each.key
  }
}
