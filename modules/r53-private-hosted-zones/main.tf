/*Resource creation: Route 53 Hosted Zone*/
resource "aws_route53_zone" "this" {
  for_each = var.core-r53-private-hosted-zones
  name     = each.value.domain-name
  comment  = each.value.description

  vpc {
    vpc_id = var.core-vpcs[each.value.vpc-name].id
  }

  tags = {
    Name = each.value.name
  }
}
