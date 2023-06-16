variable "core-vpcs" {}
variable "core-vpc-peerings" {
  type = map(object({
    region                         = optional(string)
    name                           = string
    auto-accept                    = optional(bool, true)
    requester-account-id           = optional(string)
    requester-vpc-name             = string
    requester-allow-dns-resolution = optional(bool, true)
    accepter-account-id            = optional(string)
    accepter-region                = optional(string, "")
    accepter-vpc-name              = string
    accepter-allow-dns-resolution  = optional(bool, true)
  }))
}
