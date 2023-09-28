/*Resource creation: Route 53 CIDR Collection*/
resource "aws_route53_cidr_collection" "this" {
  for_each = var.core-r53-cidr-collections
  name     = each.value.name
}
