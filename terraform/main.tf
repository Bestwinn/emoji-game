terraform {
  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.11"
    }
  }
}

provider "kubernetes" {
  config_path = "~/.kube/config"
}

resource "kubernetes_deployment" "emoji_game" {
  metadata {
    name = "emoji-game"
    labels = {
      app = "emoji-game"
    }
  }

  spec {
    replicas = 1
    selector {
      match_labels = {
        app = "emoji-game"
      }
    }

    template {
      metadata {
        labels = {
          app = "emoji-game"
        }
      }

      spec {
        container {
          name  = "emoji-game"
          image = "bestwin/emoji-game:latest"
          port {
            container_port = 80
          }
        }
      }
    }
  }
}

resource "kubernetes_service" "emoji_game_service" {
  metadata {
    name = "emoji-game-service"
  }

  spec {
    selector = {
      app = "emoji-game"
    }

    port {
      port        = 80
      target_port = 80
    }

    type = "NodePort"
  }
}
