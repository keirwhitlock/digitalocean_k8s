# Configure the DigitalOcean Provider
provider "digitalocean" {
  token = "${var.do_token}"
}

module "k8s_cluster" {
  source = "../../k8s_module"
  region = "${var.region}"
  k8s_version = "${var.k8s_version}"
  worker_pool_name = "${var.worker_pool_name}"
  worker_pool_node_size = "${var.worker_pool_node_size}"
  worker_pool_node_count = "${var.worker_pool_node_count}"
  cluster_name = "${var.cluster_name}"
}
