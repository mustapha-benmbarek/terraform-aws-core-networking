variable "core-vpcs" {
  type = map(object({
    region        = optional(string)
    cidr-block    = string
    name          = string
    dns-hostnames = optional(bool, true)
    dns-support   = optional(bool, true)
    tenancy       = optional(string, "default")
  }))
}
