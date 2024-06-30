resource "azurerm_resource_group" "name" {
    name = var.grp1
    location = var.place
  
}

resource "azurerm_virtual_network" "example" {
  name                =var.net1
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.name.location
  resource_group_name = azurerm_resource_group.name.name
}

resource "azurerm_storage_account" "saacc_1" {
  name                     = var.sa1_name
  resource_group_name      = azurerm_resource_group.name.name
  location                 = azurerm_resource_group.name.location
  account_tier             = var.account_tier
  account_replication_type = "LRS"
}
