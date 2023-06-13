variable "core-vpcs" {
  type = map(object({
    region          = optional(string)
    name            = string
    cidr-block-ipv4 = string
    cidr-block-ipv6 = optional(bool, false)
    dns-hostnames   = optional(bool, true)
    dns-support     = optional(bool, true)
    tenancy         = optional(string, "default")
  }))
}
