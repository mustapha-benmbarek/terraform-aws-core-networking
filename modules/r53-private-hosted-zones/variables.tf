variable "core-vpcs" {}
variable "core-r53-private-hosted-zones" {
  type = map(object({
    region      = optional(string)
    name        = string
    scope       = optional(string)
    domain-name = string
    description = optional(string)
    vpc-name    = string
  }))
}
