output "vdc_id" {
  value = module.vdc.vdc_id
}

output "k8s_cluster_id" {
  value = module.kubernetes.k8s_cluster_id
}

output "nodepool_id" {
  value = module.kubernetes.nodepool_id
}
