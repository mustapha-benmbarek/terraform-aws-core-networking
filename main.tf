module "vpcs" {
  source    = "./modules/networking/vpc"
  core-vpcs = local.lst-vpcs
}
