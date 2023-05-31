/*Loading...*/
locals {
  data-vpcs                  = try(jsondecode(file(var.file-vpcs)), [])
  data-vpc-subnets           = try(jsondecode(file(var.file-vpc-subnets)), [])
  data-vpc-internet-gateways = try(jsondecode(file(var.file-vpc-internet-gateways)), [])
  data-vpc-elastic-ips       = try(jsondecode(file(var.file-vpc-elastic-ips)), [])
  data-vpc-nat-gateways      = try(jsondecode(file(var.file-vpc-nat-gateways)), [])
}

/*Decoding...*/
locals {
  lst-vpcs                  = try({ for obj in local.data-vpcs.vpcs : obj.name => obj }, tomap({}))
  lst-vpc-subnets           = try({ for obj in local.data-vpc-subnets.subnets : obj.name => obj }, tomap({}))
  lst-vpc-internet-gateways = try({ for obj in local.data-vpc-internet-gateways.internet-gateways : obj.name => obj }, tomap({}))
  lst-vpc-elastic-ips       = try({ for obj in local.data-vpc-elastic-ips.elastic-ips : obj.name => obj }, tomap({}))
  lst-vpc-nat-gateways      = try({ for obj in local.data-vpc-nat-gateways.nat-gateways : obj.name => obj }, tomap({}))
}
