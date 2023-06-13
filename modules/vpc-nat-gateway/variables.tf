variable "core-vpc-subnets" {}
variable "core-vpc-elastic-ips" {}
variable "core-vpc-nat-gateways" {
  type = map(object({
    region            = optional(string)
    name              = string
    subnet-name       = string
    connectivity-type = optional(string, "public")
    elastic-ip-name   = optional(string)
    private-ip        = optional(string)
  }))
}
