variable "rg_name" {
  type = string
}

variable "sa1_name" {
  type = string
}

variable "sa2_name" {
  type = string
}

variable "account_tier" {
  type    = string
  default = "Standard"
}

variable "account_replication_type" {
  type    = string
  default = "LRS"
}

variable "sa1_containers" {
  type    = list(string)
  default = ["sales", "product"]
}

variable "sa2_containers" {
  type    = list(string)
  default = ["inbound", "return", "pkg"]
}
