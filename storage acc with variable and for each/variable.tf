variable "rg_name" {
  type = string
  default = "nittesh"
}

variable "sa1_name" {
  type = string
  default = "stg6"
}

variable "sa2_name" {
  type = string
  default = "stg54"
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
  default = ["con1", "con2"]
}

variable "sa2_containers" {
  type    = list(string)
  default = ["con1", "con2", "con3"]
}
