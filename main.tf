# create resource group
module "create_resource_group" {
  source = "./modules/create_rg"
  name = var.name
  location = var.location  
}



