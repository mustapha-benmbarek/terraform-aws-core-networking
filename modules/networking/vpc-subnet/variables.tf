variable "core-vpcs" {}
variable "core-vpc-subnets" {
  type = map(object({
    region            = optional(string)
    name              = string
    cidr-block        = string
    availability-zone = string
    vpc-id            = string
  }))
}
