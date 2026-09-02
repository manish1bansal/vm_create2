resource "azurerm_subnet" "sbnet" {
  name = "manish-sbnet"
  resource_group_name = var.rgname
  virtual_network_name = var.vnetname 
  address_prefixes = ["10.0.1.0/24"]
}

variable "rgname" {}
variable "vnetname" {}

output "returnsubnetid" {
  value = azurerm_subnet.sbnet.id
}