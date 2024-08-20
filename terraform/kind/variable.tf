variable "name" {
  type = string
  description = "Name of kind cluster"
}

variable "kubeconfig_path" {
  type = string
  description = "Path to kubeconfig"
  default = ".kube/config"
}