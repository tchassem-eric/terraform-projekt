resource "ionoscloud_datacenter" "proditech_vdc" {
  name        = "proditech-vdc"
  location    = "de/fra"   
  description = "VDC Kubernetes Cluster"
}

output "vdc_id" {
  value = ionoscloud_datacenter.my_vdc.id
}
