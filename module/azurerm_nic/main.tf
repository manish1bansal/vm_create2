resource "azurerm_network_interface" "nic" {
  name = "manish-nic"
  resource_group_name = var.rgname 
  location = var.location 

  ip_configuration {
    name = "manish-nic"
    subnet_id = var.subnetid
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id = var.publicid
  }
}

variable "rgname" {}
variable "location" {}
variable "subnetid" {}
variable "publicid" {}

output "returnnicid" {
  value = azurerm_network_interface.nic.id
}
