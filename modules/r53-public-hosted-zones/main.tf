/*Resource creation: Route 53 Hosted Zone*/
resource "aws_route53_zone" "this" {
  for_each = var.core-r53-public-hosted-zones
  name     = each.value.domain-name
  comment  = each.value.description

  tags = {
    Name = each.value.name
  }
}
