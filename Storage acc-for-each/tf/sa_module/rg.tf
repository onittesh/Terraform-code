resource "azurerm_resource_group" "inventory_rg" {
  name     = var.rg_name
  location = "East US"
}