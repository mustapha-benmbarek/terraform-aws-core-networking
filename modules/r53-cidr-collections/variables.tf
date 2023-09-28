variable "core-r53-cidr-collections" {
  type = map(object({
    region      = optional(string)
    name        = string
    description = optional(string)
  }))
}
