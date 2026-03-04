module "provider" {
  source      = "./modules/provider"
  ionos_token = var.ionos_token
}

module "vdc" {
  source = "./modules/vdc"
}

module "kubernetes" {
  source        = "./modules/kubernetes"
  datacenter_id = module.vdc.vdc_id
}
