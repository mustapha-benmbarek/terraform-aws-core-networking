variable "core-vpc-managed-prefix-lists" {
  type = map(object({
    region            = optional(string)
    name              = string
    ip-address-family = optional(string, "IPv4")
    ip-max-entries    = number
    ip-entries = optional(list(object({
      cidr        = string
      description = string
    })))
  }))
}
