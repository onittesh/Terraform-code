resource "azurerm_resource_group" "rggroup" {
  name     = var.rg_name
  location = "East US"
}


resource "azurerm_storage_account" "sacc_1" {
  name                     = var.sa1_name
  resource_group_name      = azurerm_resource_group.rggroup.name
  location                 = azurerm_resource_group.rggroup.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
}

resource "azurerm_storage_account" "sacc_2" {
  name                     = var.sa2_name
  resource_group_name      = azurerm_resource_group.rggroup.name
  location                 = azurerm_resource_group.rggroup.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
}
