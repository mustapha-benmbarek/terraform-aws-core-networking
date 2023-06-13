variable "core-vpcs" {}
variable "core-vpc-egress-only-internet-gateways" {
  type = map(object({
    region   = optional(string)
    name     = string
    vpc-name = string
  }))
}
