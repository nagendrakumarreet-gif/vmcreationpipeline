module "rg" {
  source   = "../../module/1_azurerm_resource_group"
  rgs = var.rgsg
}

module "vnet" {
  depends_on       = [module.rg]
  source           = "../../module/2_azurerm_virtual_network"
  vnets = var.vnetss
  }

  module "subnet" {
  depends_on = [module.vnet]
  source     = "../../module/3_azurerm_virtual_subnet"
  subnets    = var.subnetss
}
module "pip" {
  depends_on = [module.rg]
  source     = "../../module/5_azurerm_public_ip"
  public_ips = var.pips
}

module "vms" {
  depends_on       = [module.rg]
  source           = "../../module/4_azurerm_virtual_machine"
  vms = var.vmss
}
