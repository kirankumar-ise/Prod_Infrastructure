# Input Varibale for Virtual Machine

variable "count_vm" {
  type = number
  default = 1
}
variable "vm_name" {
  type = string
  default = "scb000prod01"
}

# Input Varibale for VM Size

variable "vm_size" {
  type = string
  default = "Standard_B1s"
}

#  Input Varibale for admin_username

variable "admin_username" {
  type = string
  default = "azureuser"
}

# Input Varibale for admin_password

variable "admin_password" {
  type = string
  default = "azure123!"
}

# Input Varibale for Network Interface

variable "nic_name" {
  type = string
  default = "scb000prod01-nic01"
}

#  Input Varibale for private_ip_address_allocation

variable "private_ip_address_allocation" {
  type = string
  default = "Dynamic"
}



