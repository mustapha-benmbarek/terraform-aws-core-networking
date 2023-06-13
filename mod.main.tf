/*Networking Module | Virtual Private Cloud (VPC)*/
module "vpcs" {
  source    = "./networking/vpc"
  core-vpcs = local.lst-vpcs
}

/*Networking Module | VPC Subnet*/
module "vpc-subnets" {
  source           = "./networking/vpc-subnet"
  core-vpcs        = module.vpcs.ids
  core-vpc-subnets = local.lst-vpc-subnets
}

/*Networking Module | VPC DHCP Option Set*/
module "vpc-dhcp-option-sets" {
  source                    = "./networking/vpc-dhcp-option-set"
  core-vpcs                 = module.vpcs.ids
  core-vpc-dhcp-option-sets = local.lst-vpc-dhcp-option-sets
}

/*Networking Module | VPC Internet Gateway*/
module "vpc-internet-gateways" {
  source                     = "./networking/vpc-internet-gateway"
  core-vpcs                  = module.vpcs.ids
  core-vpc-internet-gateways = local.lst-vpc-internet-gateways
}

/*Networking Module | VPC Egress-only Internet Gateway*/
module "vpc-egress-only-internet-gateways" {
  source                                 = "./networking/vpc-egress-only-internet-gateway"
  core-vpcs                              = module.vpcs.ids
  core-vpc-egress-only-internet-gateways = local.lst-vpc-egress-only-internet-gateways
}

/*Networking Module | VPC Elastic IP*/
module "vpc-elastic-ips" {
  source               = "./networking/vpc-elastic-ip"
  core-vpc-elastic-ips = local.lst-vpc-elastic-ips
}

/*Networking Module | VPC NAT Gateway*/
module "vpc-nat-gateways" {
  source                = "./networking/vpc-nat-gateway"
  core-vpc-subnets      = module.vpc-subnets.ids
  core-vpc-elastic-ips  = module.vpc-elastic-ips.ids
  core-vpc-nat-gateways = local.lst-vpc-nat-gateways
}

/*Networking Module | VPC Managed Prefixy*/
module "vpc-managed-prefix-lists" {
  source                        = "./networking/vpc-managed-prefix-list"
  core-vpc-managed-prefix-lists = local.lst-vpc-managed-prefix-lists
}
