resource "azurerm_virtual_network" "prod_vnet" {
  name = var.production_vnet
  address_space = var.addr_space
  location = azurerm_resource_group.rg01.location
  resource_group_name = azurerm_resource_group.rg01.name

}
resource "azurerm_subnet" "web_subnet" {
  name = var.web_subnet
  address_prefixes = var.addr_prefix
  resource_group_name = azurerm_resource_group.rg01.name
  virtual_network_name = azurerm_virtual_network.prod_vnet.name
}