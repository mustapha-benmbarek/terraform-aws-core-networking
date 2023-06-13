/*Data loading...*/
locals {
  data-vpcs                              = try(jsondecode(file(var.file-vpcs)), [])
  data-vpc-subnets                       = try(jsondecode(file(var.file-vpc-subnets)), [])
  data-vpc-internet-gateways             = try(jsondecode(file(var.file-vpc-internet-gateways)), [])
  data-vpc-egress-only-internet-gateways = try(jsondecode(file(var.file-vpc-egress-only-internet-gateways)), [])
  data-vpc-route-tables                  = try(jsondecode(file(var.file-vpc-route-tables)), [])
  data-vpc-elastic-ips                   = try(jsondecode(file(var.file-vpc-elastic-ips)), [])
  data-vpc-nat-gateways                  = try(jsondecode(file(var.file-vpc-nat-gateways)), [])
  data-vpc-dhcp-option-sets              = try(jsondecode(file(var.file-vpc-dhcp-option-sets)), [])
  data-vpc-managed-prefix-lists          = try(jsondecode(file(var.file-vpc-managed-prefix-lists)), [])
  data-vpc-peerings                      = try(jsondecode(file(var.file-vpc-peerings)), [])

}

/*Data decoding...*/
locals {
  lst-vpcs                              = try({ for obj in local.data-vpcs.vpcs : obj.name => obj }, tomap({}))
  lst-vpc-subnets                       = try({ for obj in local.data-vpc-subnets.subnets : obj.name => obj }, tomap({}))
  lst-vpc-internet-gateways             = try({ for obj in local.data-vpc-internet-gateways.internet-gateways : obj.name => obj }, tomap({}))
  lst-vpc-egress-only-internet-gateways = try({ for obj in local.data-vpc-internet-gateways.internet-gateways : obj.name => obj }, tomap({}))
  lst-vpc-route-tables                  = try({ for obj in local.data-vpc-route-tables.route-tables : obj.name => obj }, tomap({}))
  lst-vpc-elastic-ips                   = try({ for obj in local.data-vpc-elastic-ips.elastic-ips : obj.name => obj }, tomap({}))
  lst-vpc-nat-gateways                  = try({ for obj in local.data-vpc-nat-gateways.nat-gateways : obj.name => obj }, tomap({}))
  lst-vpc-dhcp-option-sets              = try({ for obj in local.data-vpc-dhcp-option-sets.dhcp-option-sets : obj.name => obj }, tomap({}))
  lst-vpc-managed-prefix-lists          = try({ for obj in local.data-vpc-managed-prefix-lists.managed-prefix-lists : obj.name => obj }, tomap({}))
  lst-vpc-peerings                      = try({ for obj in local.data-vpc-peerings.peerings : obj.name => obj }, tomap({}))
}
