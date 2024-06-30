# ------------For each code example-------

resource "azurerm_resource_group" "example1" {
  for_each = var.rg_name
  name = each.value.name
  location = each.value.location
 
}

variable "rg_name" {

  default = {
  "a" = {
    name = "rg-1"
    location = "east us"
   
  }

  "b"={
    name="rg-2"
    location="west us"
    
  }

  "c" = {
    name = "rg-3"
    location = "south india "
 
  }

  }
}
