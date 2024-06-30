variable "stg_acc" {
  type = map(string)
  default = {
    "a" = {
      name                     = "storage1"
      account_replication_type = "GRS"
      account_tier             = "standard"
    }

    "b" = {
      name                     = "storage2"
      account_replication_type = "GRS"
      account_tier             = "standard"

    }
  }

}

variable "kantainer1" {
    type = map(string)
  default = {
    a = {
      cont1  = "container1"
      prv1   = "private"
      accnem = "storage1"
    }

    b = {
      cont1  = "container2"
      prv1   = "private"
      accnem = "storage2"

    }
  }

}

