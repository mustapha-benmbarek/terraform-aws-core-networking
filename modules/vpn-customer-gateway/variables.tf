variable "core-vpn-customer-gateways" {
  type = map(object({
    region       = optional(string)
    name         = string
    type         = optional(string, "ipsec.1")
    asn          = optional(number, 65000)
    address-ipv4 = optional(string, "")
  }))
}


