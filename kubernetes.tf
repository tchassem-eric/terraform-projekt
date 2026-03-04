variable "datacenter_id" {
  type = string
}

resource "ionoscloud_kubernetes_cluster" "my_cluster" {
  name              = "my-cluster"
  datacenter_id     = var.datacenter_id
  kubernetes_version = "1.29.0"
}

resource "ionoscloud_kubernetes_node_pool" "my_nodepool" {
  cluster_id       = ionoscloud_kubernetes_cluster.my_cluster.id
  name             = "my-nodepool"
  cpu_cores        = 4
  ram              = 8192
  storage_type     = "HDD"
  storage_size     = 50
  availability_zone = "AUTO"
  min_nodes        = 1
  max_nodes        = 3
  initial_nodes    = 1
}

output "k8s_cluster_id" {
  value = ionoscloud_kubernetes_cluster.my_cluster.id
}

output "nodepool_id" {
  value = ionoscloud_kubernetes_node_pool.my_nodepool.id
}
