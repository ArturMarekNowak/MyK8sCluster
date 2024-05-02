terraform {
  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">= 2.0.1"
    }
  }
}

provider "kubernetes" {
  host = "https://192.168.1.223:6443"

  config_path    = "~/.kube/config"
}