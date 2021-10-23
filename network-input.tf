# Network name

variable "production_vnet" {
  type = string
  default = "scb_prod_vnet"

}

# Network address_space

variable "addr_space" {
  type = list(string)
  default = [ "10.0.0.0/16" ]
}

# Subnet Name

variable "web_subnet" {
  type = string
  default = "web_prod_subnet02"
}


# Subnet address_prefixes

variable "addr_prefix" {
  type = list(string)
  default = [ "10.0.1.0/16" ]
}