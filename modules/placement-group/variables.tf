variable "core-placement-groups" {
  type = map(object({
    region   = optional(string)
    name     = string
    strategy = string
    partitions = optional(number)
  }))
}