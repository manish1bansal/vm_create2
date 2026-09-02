resource "azurerm_public_ip" "publicip" {
  name = "manish-publicip"
  resource_group_name = var.rgname
  location = var.location
  allocation_method = "Static"
  sku = "Standard"
}

variable "rgname" {}
variable "location" {}

output "returnpublicid" {
  value = azurerm_public_ip.publicip.id
}