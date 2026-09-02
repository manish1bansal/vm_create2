resource "azurerm_linux_virtual_machine" "vms" {
  name = "manish-vm"
  resource_group_name = var.rgname
  location = var.location 
  network_interface_ids = [var.nicid]
  size = "Standard_D2s_v3"
  admin_username = "adminuser"
  admin_password = "Admin@123456"
  disable_password_authentication = "false"

    os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"

    }

    source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
}

variable "rgname" {}
variable "location" {}
variable "nicid" {}
