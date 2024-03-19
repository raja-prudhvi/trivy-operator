/**
 * trivy-operator ( Aqua securities)
 * 
 * This module installs trivy-operator into a Kubernetes cluster
 * This operator will literally scan the whole cluster and will generate security vulnerability reports 
 * This module also scans and push to the prometheus and graphana will display dashboard so
 * we can have clear picture of what this tool is doing and how important it is
 * see more on README.md
 */

terraform {
  required_version = ">= 1.3.0"

  required_providers {
    kubernetes = {
      source = "hashicorp/kubernetes"
    }
    helm = {
      source = "hashicorp/helm"
    }
  }
}

# This block will create a namespace. Its better if we manage it with TF than via helm in here
# https://github.com/hashicorp/terraform-provider-helm/issues/785#issuecomment-935332219

resource "kubernetes_namespace" "trivy_operator_namespace" {
  metadata {
    name = var.trivy_operator_namespace
  }
}

resource "helm_release" "trivy_operator" {
  name       = var.trivy_operator_name
  repository = "https://aquasecurity.github.io/helm-charts/"
  chart      = var.trivy_operator_chart_name
  version    = var.trivy_operator_version
  namespace  = kubernetes_namespace.trivy_operator_namespace.metadata[0].name
  values     = [file("${path.module}/assets/values.yaml")]
}

