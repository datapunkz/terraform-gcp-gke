variable "app" {
  type        = string
  description = "Name of application"
}

variable "zone" {
  default = "us-east1-d"
}

variable "docker-image" {
  type = string
  description = "name of the docker image to deploy"
}
