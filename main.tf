# this provider tells terraform which API to talk to. we choose the kubernetes (minikube) cluster that we created. 
provider "kubernetes" {
  config_path = "~/.kube/config"
}

# this is basically pip, but for kubernetes.
provider "helm" {
  kubernetes = {
    config_path = "~/.kube/config"
  }
}

# we create a "namespace" resource called "devops-project"
resource "kubernetes_namespace_v1" "dev_env" {
  metadata {
    name = "devops-project"
  }
}

resource "helm_release" "argocd" {
  name       = "argocd"
  repository = "https://argoproj.github.io/argo-helm" # The official Argo app store
  chart      = "argo-cd"
  namespace  = "argocd"
  create_namespace = true
  
  #make sure the namespace is created before we try to install ArgoCD into it
  depends_on = [kubernetes_namespace_v1.dev_env]
}

resource "helm_release" "jenkins" {
  name = "jenkins"
  repository = "https://charts.jenkins.io"
  chart = "jenkins"
  namespace = "jenkins"
  create_namespace = true
  values = [yamlencode(
    {
    controller = {
      serviceType = "NodePort"
      runAsUser = 1000
      fsGroup = 1000
      persistence = {
        enabled = true
        storageClass = "standard"
        size = "5Gi"
      }
      initializeOnce = true
      installLatestPlugins = true
    }
  })]
}