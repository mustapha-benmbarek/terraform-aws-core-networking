variable "core-vpcs" {}
variable "core-vpn-virtual-private-gateways" {
  type = map(object({
    region   = optional(string)
    name     = string
    asn      = optional(number)
    vpc-name = optional(string, "")
  }))
}

