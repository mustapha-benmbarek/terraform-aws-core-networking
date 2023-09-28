/*Resource creation: Route 53 CIDR Location*/
resource "aws_route53_cidr_location" "this" {
  for_each           = var.core-r53-cidr-locations
  name               = each.value.name
  cidr_collection_id = var.core-r53-cidr-collections[each.value.cidr-collection-name].id
  cidr_blocks        = each.value.cidr-blocks
}
