terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}

provider "docker" {}

# Build and run your Emoji Game container
resource "docker_image" "emoji_game" {
  name = "bestwin/emoji-game:latest"
  build {
    context = "${path.module}"
  }
}

resource "docker_container" "emoji_game_container" {
  name  = "emoji-game"
  image = docker_image.emoji_game.image_id
  ports {
    internal = 80
    external = 8080
  }
}
