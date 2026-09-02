resource "azurerm_virtual_network" "vnets" {
  name = "manish-vnet"
  resource_group_name = var.rgname
  location = var.location
  address_space = ["10.0.0.0/16"]
}

variable "rgname" {}
variable "location" {}

output "returnvnet" {
  value = azurerm_virtual_network.vnets.name
}