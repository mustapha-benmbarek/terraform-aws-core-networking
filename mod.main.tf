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

/*Networking Module | VPC Internet Gateway*/
module "vpc-internet-gateways" {
  source                     = "./modules/vpc-internet-gateway"
  core-vpcs                  = module.vpcs.ids
  core-vpc-internet-gateways = local.lst-vpc-internet-gateways
}
