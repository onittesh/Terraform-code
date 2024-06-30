resource "azurerm_resource_group" "xyz" {
  name     = var.abc
  location = var.place

}

resource "azurerm_resource_group" "xray" {
  name     = var.ajoy
  location = var.space

}

resource "azurerm_storage_account" "storedata" {
  for_each                 = var.stg_acc
  name                     = each.value.name
  resource_group_name      = azurerm_resource_group.xyz.name
  location                 = each.value.location
  account_tier             = each.value.a_tier
  account_replication_type = each.value.acc_r_type


}

resource "azurerm_storage_account" "data" {
  for_each                 = var.wearhouse
  name                     = each.value.name2
  resource_group_name      = azurerm_resource_group.xray.name
  location                 = each.value.location
  account_tier             = each.value.at_ier
  account_replication_type = each.value.acc1_r_type


}


resource "azurerm_storage_container" "example" {
  for_each              = var.contai
  name                  = each.value.ginne
  storage_account_name  = each.value.name
  container_access_type = each.value.pv1
}



resource "azurerm_storage_container" "example2" {
  for_each              = var.container100
  name                  = each.value.anda
  storage_account_name  = each.value.name2
  container_access_type = each.value.pvc1
}

