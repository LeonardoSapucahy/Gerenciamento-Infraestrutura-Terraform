# Saídas do módulo Pods

output "deployment_name" {
  value = kubernetes_deployment.app_deployment.metadata[0].name
}
