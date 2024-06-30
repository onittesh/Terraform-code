resource "azurerm_resource_group" "group1" {
  name     = "rg_group"
  location = "East US"
}


resource "azurerm_storage_account" "storedata" {
  for_each                 = var.stg_acc
  name                     = each.value.name
  resource_group_name      = azurerm_resource_group.group1.name
  location                 = azurerm_resource_group.group1.location
  account_tier             = each.value.account_tier
  account_replication_type = each.value.account_replication_type


}










