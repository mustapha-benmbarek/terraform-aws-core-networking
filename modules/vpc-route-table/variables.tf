variable "core-vpcs" {}
variable "core-vpc-subnets" {}
variable "core-vpc-managed-prefix-lists" {
  type = map(object({
    region   = optional(string)
    name     = string
    vpc-name = string
    routes = optional(list(object({
      destination-cidr-ipv4                    = string
      destination-cidr-ipv6                    = string
      destination-managed-prefix-list          = string
      target-carrier-gateway-name              = string
      target-internet-gateway-name             = string
      target-egress-only-internet-gateway-name = string
      target-nat-gateway-name                  = string
      target-transit-gateway-name              = string
      target-virtual-private-gateway-name      = string
      target-vpc-endpoint-name                 = string
      target-vpc-peering-connection-name       = string
      target-vpc-network-interface-name        = string
      target-vpc-ec2-instance-name             = string
    })))
  }))
}
