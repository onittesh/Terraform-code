resource "azurerm_resource_group" "name" {
  name     = "grp1"
  location = "East US"
}

resource "azurerm_storage_account" "example" {
  count                    = length(var.stg1)
  name                     = var.stg1[count.index]
  resource_group_name      = azurerm_resource_group.name.name
  location                 = azurerm_resource_group.name.location
  account_tier             = "Standard"
  account_replication_type = "LRS"


}
resource "azurerm_storage_container" "example" {
  count                 = length(var.kon1)
  name                  = var.kon1[count.index]
  storage_account_name  = azurerm_storage_account.example.name
  container_access_type = "private"
}




variable "stg1" {
  type    = list(string)
  default = ["storage1 , storage2"]

}



variable "kon1" {
  type    = list(string)
  default = ["sales", "product"]
}
