terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"     # Use the Docker provider from kreuzwerker (official provider source)
      version = "~> 3.0.2"               # Use version 3.0.2 or compatible updates (e.g., 3.0.5, but not 4.x)
    }
  }
}
provider "docker" {}                    # Initialize the Docker provider (uses local Docker by default)
resource "docker_image" "nginx" {
  name = "nginx:latest"                 # Specify which Docker image to pull (official Nginx image from Docker Hub)
}
resource "docker_container" "nginx_container" {
  name  = "my-nginx"                    # The container will be named 'my-nginx'
  image = docker_image.nginx.image_id  # Uses the image pulled by the previous resource (nginx:latest)
  ports {
    internal = 80                      # Exposes container's port 80 (Nginx default HTTP port)
    external = 8081                    # Maps it to host port 8081 (you can visit http://localhost:8081)
  }
}

