terraform {
  required_providers {
    helm = {
      source  = "hashicorp/helm"
      version = "~> 2.11"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.24"
    }
  }
}

provider "helm" {
  kubernetes {
    config_path = var.kubeconfig_path
  }
}

resource "helm_release" "nginx" {
  name       = var.release_name
  namespace  = var.namespace
  chart      = var.chart_path
  create_namespace = true

  values = [
    file("${path.module}/values.yaml")
  ]
}
