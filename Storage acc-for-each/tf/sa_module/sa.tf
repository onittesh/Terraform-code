resource "azurerm_storage_account" "inventory_sa_1" {
  name                     = var.sa1_name
  resource_group_name      = azurerm_resource_group.inventory_rg.name
  location                 = azurerm_resource_group.inventory_rg.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
}

resource "azurerm_storage_account" "inventory_sa_2" {
  name                     = var.sa2_name
  resource_group_name      = azurerm_resource_group.inventory_rg.name
  location                 = azurerm_resource_group.inventory_rg.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
}
