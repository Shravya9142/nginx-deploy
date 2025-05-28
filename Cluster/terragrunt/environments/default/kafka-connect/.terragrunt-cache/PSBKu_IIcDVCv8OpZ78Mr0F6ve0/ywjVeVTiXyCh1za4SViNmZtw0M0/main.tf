terraform {
  required_providers {
    helm = {
      source  = "hashicorp/helm"
      version = "~> 2.11"
    }
  }
}

provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}

resource "helm_release" "kafka_connect" {
  name       = "kafka-connect"
  namespace  = "default"
  chart      = var.chart_path
  values     = [file("${path.module}/values.yaml")]


  set {
    name  = "deployOnlyConnector"
    value = var.deploy_only_connector
  }
}
