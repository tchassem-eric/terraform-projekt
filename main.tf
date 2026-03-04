module "provider" {
  source = "./modules/provider"

  ionos_username = var.eric.tchassemngounou@it.nrw.de
  ionos_password = var.ionos_password
}

module "vdc" {
  source = "./modules/vdc"
}

module "kubernetes" {
  source        = "./modules/kubernetes"
  datacenter_id = module.vdc.vdc_id
}
