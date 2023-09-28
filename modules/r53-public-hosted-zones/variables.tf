variable "core-r53-public-hosted-zones" {
  type = map(object({
    region      = optional(string)
    scope       = optional(string)
    name        = string
    domain-name = string
    description = optional(string)
  }))
}
