resource "azurerm_network_security_group" "nsg" {
  name = "manish-nsg"
  resource_group_name = var.rgname
  location = var.location
  
  security_rule {
    name                       = "manish-sec"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "*"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }

}

variable "rgname" {}
variable "location" {}

output "returnnsgid" {
  value = azurerm_network_security_group.nsg.id 
}
