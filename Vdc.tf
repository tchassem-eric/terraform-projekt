resource "ionoscloud_datacenter" "my_vdc" {
  name        = "my-vdc"
  location    = "de/fra"   
  description = "VDC Kubernetes Cluster"
}

output "vdc_id" {
  value = ionoscloud_datacenter.my_vdc.id
}
