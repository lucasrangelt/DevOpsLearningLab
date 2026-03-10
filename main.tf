# this provider tells terraform which API to talk to. we choose the kubernetes (minikube) cluster that we created. 
provider "kubernetes" {
  config_path = "~/.kube/config"
}

# we create a "namespace" resource called "devops-project"
resource "kubernetes_namespace_v1" "dev_env" {
  metadata {
    name = "devops-project"
  }
}