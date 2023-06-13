variable "core-vpc-elastic-ips" {
  type = map(object({
    region               = optional(string)
    name                 = string
    domain               = optional(string, "vpc")
    network-border-group = optional(string)
    public-ipv4-pool     = optional(string, "amazon")
    public-ipv4          = optional(string)
  }))
}
