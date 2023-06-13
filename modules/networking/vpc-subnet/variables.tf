variable "core-vpcs" {}
variable "core-vpc-subnets" {
  type = map(object({
    region            = optional(string)
    name              = string
    cidr-block-ipv4   = string
    cidr-block-ipv6   = optional(bool, false)
    availability-zone = string
    vpc-name          = string
  }))
}
