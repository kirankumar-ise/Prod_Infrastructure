resource "azurerm_linux_virtual_machine" "vm" {
    name = var.vm_name
    resource_group_name = azurerm_resource_group.rg01.name
    location = azurerm_resource_group.rg01.location
    network_interface_ids = [azurerm_network_interface.nic.id]
    size = var.vm_size
    admin_username = var.admin_username
    admin_password = var.admin_password

    /*admin_ssh_key {
    username   = "adminuser"
    public_key = file("~/.ssh/id_rsa.pub")
  }
  */

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "16.04-LTS"
    version   = "latest"
  }
}

resource "azurerm_network_interface" "nic" {
  name = var.nic_name
  location = azurerm_resource_group.rg01.location
  resource_group_name = azurerm_resource_group.rg01.name
  ip_configuration {
    name = "ipconfig"
    private_ip_address_allocation = var.private_ip_address_allocation
    subnet_id = azurerm_subnet.web_subnet.id

  }
}