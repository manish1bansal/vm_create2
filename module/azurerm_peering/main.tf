resource "azurerm_network_interface_security_group_association" "nsg-nic" {
  network_interface_id = var.nicid
  network_security_group_id = var.nsgid
}

variable "nicid" {}
variable "nsgid" {}