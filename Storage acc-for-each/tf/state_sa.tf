resource "azurerm_storage_account" "name" {
  name                     = var.app_sa["name"]
  resource_group_name      = var.app_sa["rg_name"]
  location                 = var.app_sa["lcn"]
  account_tier             = var.app_sa["a_t"]
  account_replication_type = var.app_sa["a_r_t"]
}
