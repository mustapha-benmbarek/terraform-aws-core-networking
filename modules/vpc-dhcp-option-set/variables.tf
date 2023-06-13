variable "core-vpcs" {}
variable "core-vpc-dhcp-option-sets" {
  type = map(object({
    region               = optional(string)
    name                 = string
    domain-name          = string
    domain-name-servers  = optional(list(string))
    ntp-servers          = optional(list(string))
    netbios-name-servers = optional(list(string))
    netbios-node-type    = optional(number, 2)
    vpc-name             = string
  }))
}
