
variable "app_sa" {
  type = map(string)
  default = {
    "name"    = "sarmatfstatestorage"
    "rg_name" = "preferredlocation"
    "lcn"     = "East US"
    "a_t"     = "Standard"
    "a_r_t"   = "GRS"
  }
}
