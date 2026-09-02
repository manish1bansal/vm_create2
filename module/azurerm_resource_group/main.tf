resource "azurerm_resource_group" "rgs" {
  name = "manish-rg"
  location = "westus"
}
output "returnrgname" {
  value = azurerm_resource_group.rgs.name
}
output "returnrglocation" {
  value = azurerm_resource_group.rgs.location
}