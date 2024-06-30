data "azurerm_storage_account" "example" {
  name                = "nittesh1"
  resource_group_name = "Rg-1"
}


resource "azurerm_storage_container" "inventory_container" {
  name                  = "cont1"
  storage_account_name  = data.azurerm_storage_account.example.name
  container_access_type = "private"

}

#this code worked-------