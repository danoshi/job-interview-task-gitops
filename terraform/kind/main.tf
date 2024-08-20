terraform {
  required_providers {
    kind = {
      source  = "tehcyx/kind"
      version = "~> 0.0.19"
    }
  }
}

provider "kind" {}

locals {
  kubeconfig_path = pathexpand("~/${var.kubeconfig_path}")
}

resource "kind_cluster" "default" {
    name = var.name
    kubeconfig_path = local.kubeconfig_path
}

output "kubeconfig_path" {
    value = local.kubeconfig_path
    sensitive = true
}