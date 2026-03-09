# this provider tells terraform which API to talk to. we choose the kubernetes (minikube) cluster that we created. 
provider "kubernetes" {
  config_path = "~/.kube/config"
}

# 
resource "kubernetes_namespace" "lab" {
  metadata {
    name = "sap-intern-project"
  }
}