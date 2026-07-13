

module "resource_group" {
source = "../child_module/azurerm_rg"
this= var.this
}



    module "storage_account" {
source = "../child_module/azurerm_st"
  depends_on = [module.resource_group]
 storebhai = var.story
 }


 module "virtual_network" {
source = "../child_module/azurerm_vnet"
 depends_on = [module.resource_group]
 vnet = var.vnet
 }




 module "subnet" {
source = "../child_module/azurerm_subnet"
 depends_on = [module.virtual_network]
 subnet = var.subnet
 }
