# Variáveis do módulo Pods

variable "app_name" {
  description = "Name of the application"
  type        = string
}

variable "namespace" {
  description = "Namespace for the deployment"
  type        = string
  default     = "default"
}

variable "replicas" {
  description = "Number of replicas"
  type        = number
  default     = 3
}

variable "container_image" {
  description = "Container image to deploy"
  type        = string
}

variable "container_port" {
  description = "Port that the container listens on"
  type        = number
}
