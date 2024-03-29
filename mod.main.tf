/*Networking Module | Virtual Private Cloud (VPC)*/
module "vpcs" {
  source    = "./modules/vpc"
  core-vpcs = local.lst-vpcs
}

/*Networking Module | VPC Subnet*/
module "vpc-subnets" {
  source           = "./modules/vpc-subnet"
  core-vpcs        = module.vpcs.ids
  core-vpc-subnets = local.lst-vpc-subnets
}

/*Networking Module | VPC DHCP Option Set*/
module "vpc-dhcp-option-sets" {
  source                    = "./modules/vpc-dhcp-option-set"
  core-vpcs                 = module.vpcs.ids
  core-vpc-dhcp-option-sets = local.lst-vpc-dhcp-option-sets
}

/*Networking Module | VPC Internet Gateway*/
module "vpc-internet-gateways" {
  source                     = "./modules/vpc-internet-gateway"
  core-vpcs                  = module.vpcs.ids
  core-vpc-internet-gateways = local.lst-vpc-internet-gateways
}

/*Networking Module | VPC Egress-only Internet Gateway*/
module "vpc-egress-only-internet-gateways" {
  source                                 = "./modules/vpc-egress-only-internet-gateway"
  core-vpcs                              = module.vpcs.ids
  core-vpc-egress-only-internet-gateways = local.lst-vpc-egress-only-internet-gateways
}

/*Networking Module | VPC Elastic IP*/
module "vpc-elastic-ips" {
  source               = "./modules/vpc-elastic-ip"
  core-vpc-elastic-ips = local.lst-vpc-elastic-ips
}

/*Networking Module | VPC NAT Gateway*/
module "vpc-nat-gateways" {
  source                = "./modules/vpc-nat-gateway"
  core-vpc-subnets      = module.vpc-subnets.ids
  core-vpc-elastic-ips  = module.vpc-elastic-ips.ids
  core-vpc-nat-gateways = local.lst-vpc-nat-gateways
}

/*Networking Module | VPC Managed Prefix*/
module "vpc-managed-prefix-lists" {
  source                        = "./modules/vpc-managed-prefix-list"
  core-vpc-managed-prefix-lists = local.lst-vpc-managed-prefix-lists
}

/*Networking Module | Placement Group*/
module "placement-groups" {
  source                = "./modules/placement-group"
  core-placement-groups = local.lst-placement-groups
}

/*Networking Module | VPN Virtual Private Gateway*/
module "vpn-virtual-private-gateways" {
  source                            = "./modules/vpn-virtual-private-gateway"
  core-vpcs                         = module.vpcs.ids
  core-vpn-virtual-private-gateways = local.lst-vpn-virtual-private-gateways
}

/*Networking Module | VPN Customer Gateway*/
module "vpn-customer-gateways" {
  source                     = "./modules/vpn-customer-gateway"
  core-vpn-customer-gateways = local.lst-vpn-customer-gateways
}

/*Networking Module | Route 53 Public Hosted Zone*/
module "r53-public-hosted-zones" {
  source                       = "./modules/r53-public-hosted-zones"
  core-r53-public-hosted-zones = local.lst-r53-public-hosted-zones
}

/*Networking Module | Route 53 Private Hosted Zone*/
module "r53-private-hosted-zones" {
  source                        = "./modules/r53-private-hosted-zones"
  core-vpcs                     = module.vpcs.ids
  core-r53-private-hosted-zones = local.lst-r53-private-hosted-zones
}

/*Networking Module | Route 53 CIDR Collection*/
module "r53-cidr-collections" {
  source                    = "./modules/r53-cidr-collections"
  core-r53-cidr-collections = local.lst-r53-cidr-collections
}

/*Networking Module | Route 53 CIDR Location*/
module "r53-cidr-locations" {
  source                    = "./modules/r53-cidr-locations"
  core-r53-cidr-collections = module.r53-cidr-collections.ids
  core-r53-cidr-locations   = local.lst-r53-cidr-locations
}
