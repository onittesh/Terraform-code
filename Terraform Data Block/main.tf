data "azurerm_resource_group" "example" {
  name = "Rg-1"

}

# resource "azurerm_storage_account" "stg" {
#   name                     = "aidataglob"
#   resource_group_name      = data.azurerm_resource_group.example.name
#   location                 = data.azurerm_resource_group.example.location
#   account_tier             = "Standard"
#   account_replication_type = "GRS"
# }


