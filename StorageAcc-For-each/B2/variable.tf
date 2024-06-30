variable "abc" {
  type    = string
  default = "airtel"

}

variable "place" {
  type    = string
  default = "East US"
}

variable "ajoy" {
  type = string
  default = "happy"
  
}

variable "space" {
  type = string
  default = "East US"
  
}

variable "stg_acc" {
  type = map(any)
  default = {
    "saa1" = {
      name       = "nitheesh"
      abc        = "airtel"
      location   = "East US"
      a_tier     = "Standard"
      acc_r_type = "GRS"


    }

    "saa2" = {
      name       = "nitheesh6"
      abc        = "airtel"
      location   = "East US"
      a_tier     = "Standard"
      acc_r_type = "GRS"

    }
  }
}

variable "contai" {
  type = map(any)
  default = {
    "container1" = {
      ginne = "katora1"
      name  = "nitheesh"
      pv1   = "private"
    }
  }

}

variable "wearhouse" {
  type = map(any)
  default = {
    "saa3" = {
      name2       = "nitheesh10"
      name        = "vadafone"
      location   = "East US"
      at_ier     = "Standard"
      acc1_r_type = "GRS"
    }
  }
}

variable "container100" {
  type = map(any)
  default = { 
    "container100" = {
      anda     = "plate1"
      name2  = "nitheesh10"
      pvc1  = "private"
    }
  }

}
