
output "Resource_Group_Name" {
  value = azurerm_resource_group.rg01.name
}

output "Resource_Group_Location" {
  value = azurerm_resource_group.rg01.location
}

output "virtual_Network_Name" {
  value = azurerm_virtual_network.prod_vnet.name
}

output "virtual_Network_ID" {
  value = azurerm_virtual_network.prod_vnet.id
}

output "Subnet_Name" {
  value = azurerm_subnet.web_subnet.name
}

output "Subnet_Name_ID" {
  value = azurerm_subnet.web_subnet.id
}


output "Virtual_Machine_Name" {
  value = azurerm_linux_virtual_machine.vm[*].name
  }


output "Virtual_Machine_IP_Address" {
  value = azurerm_linux_virtual_machine.vm[*].private_ip_address
}

