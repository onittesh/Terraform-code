resource "azurerm_storage_container" "inventory_sa1_c" {
  count                = length(var.sa1_containers)
  name                 = var.sa1_containers[count.index]
  storage_account_name = azurerm_storage_account.inventory_sa_1.name
}

resource "azurerm_storage_container" "inventory_sa2_c" {
  count                = length(var.sa2_containers)
  name                 = var.sa2_containers[count.index]
  storage_account_name = azurerm_storage_account.inventory_sa_2.name
}

