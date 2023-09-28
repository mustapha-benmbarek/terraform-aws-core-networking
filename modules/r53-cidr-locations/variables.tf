variable "core-r53-cidr-collections" {}
variable "core-r53-cidr-locations" {
  type = map(object({
    region               = optional(string)
    name                 = string
    description          = optional(string)
    cidr-collection-name = string
    cidr-blocks          = optional(list(string))
  }))
}
