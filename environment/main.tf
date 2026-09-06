module "rg1" {
    source = "../child_module/resource_group"
  resource_group = var.resource_group1

}

module "virtual23" {
  depends_on = [ module.rg1 ]
source = "../child_module/virtual_network"
vnets = var.vnets1

}

module "subnet267" {
  depends_on = [ module.virtual23 ]
  source = "../child_module/subnet"
  subnets = var.subnets1
  }