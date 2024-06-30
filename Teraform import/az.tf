# # Get Resources from a Resource Group
# data "azurerm_resources" "example" {
#     name = "Rg-1"
# }

# resource "azurerm_storage_account" "Appsa" {
#   name                     = "nitteshstorage1"
#   resource_group_name      = data.azurerm_resources.example.name
#   location                 = data.azurerm_resource.example.region
#   account_tier             = "Standard"
#   account_replication_type = "LRS"
# }

