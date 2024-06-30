module "dev_business" {
  source   = "./sa_module"
  rg_name  = "dev_business"
  sa1_name = "santhoshdevbusinessa"
  sa2_name = "santhoshdevinventorysa"
}

module "test_business" {
  source                   = "./sa_module"
  rg_name                  = "test_business"
  sa1_name                 = "santhoshtestbusinessa"
  sa2_name                 = "santhoshtestinventorysa"
  account_replication_type = "GRS"
}




module "M1" {
  source = "./moduledir"
  
}

module "storeacc" {
  source = "./B2"

}