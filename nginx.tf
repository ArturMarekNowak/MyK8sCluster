resource "kubernetes_pod" "nginx" {
  metadata {
    name = "nginx"

    labels = {
      maintained_by = "terraform"
      app           = "nginx"
    }
  }

  spec {
    container {
      image = "nginx:latest"
      name  = "nginx"

      port {
        container_port = 80
      }
    }
  }
}

resource "kubernetes_service" "nginx" {
  metadata {
    name = "nginx"
  }

  spec {
    selector = {
      app = kubernetes_pod.nginx.metadata[0].labels.app
    }

    session_affinity = "ClientIP"

    port {
      port        = 80
      target_port = 80
      node_port = 31000
    }

    type = "NodePort"
  }
}