variable "do_token" {}
variable "region" {
    default = "lon1"
}
variable "k8s_version" {
  default = "1.16.2-do.1"
}
variable "worker_pool_name" {
  default = "worker-pool"
}
variable "worker_pool_node_size" {
  default = "s-1vcpu-2gb"
}
variable "worker_pool_node_count" {
  default = 1
}

variable "cluster_name" {
  default = "k8s-cluster"
}
