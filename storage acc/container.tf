resource "azurerm_storage_container" "inventory_container" {
  for_each              = var.kantainer1
  name                  = each.value.cont1
  storage_account_name  = each.value.accname
  container_access_type = each.value.prv1

}


