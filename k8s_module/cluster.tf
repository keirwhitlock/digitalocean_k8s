resource "digitalocean_kubernetes_cluster" "cluster" {
  name    = "${var.cluster_name}"
  region  = "${var.region}"
  version = "${var.k8s_version}"

  node_pool {
    name       = "${var.worker_pool_name}"
    size       = "${var.worker_pool_node_size}"
    node_count = "${var.worker_pool_node_count}"
  }
}