# Módulo reutilizável para criação de pods

resource "kubernetes_deployment" "app_deployment" {
  metadata {
    name      = var.app_name
    namespace = var.namespace
  }

  spec {
    replicas = var.replicas

    selector {
      match_labels = {
        app = var.app_name
      }
    }

    template {
      metadata {
        labels = {
          app = var.app_name
        }
      }

      spec {
        container {
          image = var.container_image
          name  = var.app_name

          port {
            container_port = var.container_port
          }
        }
      }
    }
  }
}

output "deployment_name" {
  value = kubernetes_deployment.app_deployment.metadata[0].name
}
