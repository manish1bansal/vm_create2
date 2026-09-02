module "callrg" {
  source = "../module/azurerm_resource_group"
}
module "callvnet" {
  source   = "../module/azurerm_vnet"
  rgname   = module.callrg.returnrgname
  location = module.callrg.returnrglocation
}

module "callsbnet" {
  source   = "../module/azurerm_subnet"
  rgname   = module.callrg.returnrgname
  vnetname = module.callvnet.returnvnet
}

module "callpublicip" {
  source   = "../module/azurerm_public_ip"
  rgname   = module.callrg.returnrgname
  location = module.callrg.returnrglocation
}

module "callnic" {
  source   = "../module/azurerm_nic"
  rgname   = module.callrg.returnrgname
  location = module.callrg.returnrglocation
  publicid = module.callpublicip.returnpublicid
  subnetid = module.callsbnet.returnsubnetid
}

module "callnsg" {
  source   = "../module/azurerm_nsg"
  rgname   = module.callrg.returnrgname
  location = module.callrg.returnrglocation
}
module "callpeering" {
  source = "../module/azurerm_peering"
  nicid  = module.callnic.returnnicid
  nsgid  = module.callnsg.returnnsgid
}

module "callvm" {
  source   = "../module/azurerm_vm"
  rgname   = module.callrg.returnrgname
  location = module.callrg.returnrglocation
  nicid    = module.callnic.returnnicid
}