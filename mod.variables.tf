/*Initialization...*/
variable "file-vpcs" { default = "" }
variable "file-vpc-subnets" { default = "" }
variable "file-vpc-internet-gateways" { default = "" }
variable "file-vpc-egress-only-internet-gateways" { default = "" }
variable "file-vpc-route-tables" { default = "" }
variable "file-vpc-elastic-ips" { default = "" }
variable "file-vpc-nat-gateways" { default = "" }
variable "file-vpc-dhcp-option-sets" { default = "" }
variable "file-vpc-managed-prefix-lists" { default = "" }
variable "file-vpc-peerings" { default = "" }
variable "file-vpc-carrier-gateways" { default = "" }
variable "file-vpc-endpoints" { default = "" }
variable "file-vpc-endpoint-services" { default = "" }
variable "file-placement-groups" { default = "" }
variable "file-vpn-customer-gateways" { default = "" }
variable "file-vpn-virtual-private-gateways" { default = "" }

variable "file-r53-public-hosted-zones" { default = "" }
variable "file-r53-private-hosted-zones" { default = "" }
variable "file-r53-public-records" { default = "" }
variable "file-r53-private-records" { default = "" }
variable "file-r53-cidr-collections" { default = "" }
variable "file-r53-cidr-locations" { default = "" }
