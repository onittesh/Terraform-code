resource "azurerm_storage_container" "con1" {
  count                = length(var.sa1_containers)
  name                 = var.sa1_containers[count.index]
  storage_account_name =  azurerm_storage_account.sacc_1.name
}

resource "azurerm_storage_container" "con2" {
  count                = length(var.sa2_containers)
  name                 = var.sa2_containers[count.index]
  storage_account_name = azurerm_storage_account.sacc_2.name
}

