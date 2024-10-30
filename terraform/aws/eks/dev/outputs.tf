# Definição de saídas para cluster dev

output "cluster_endpoint" {
  value = module.eks_dev.cluster_endpoint
}

output "cluster_security_group_id" {
  value = module.eks_dev.cluster_security_group_id
}

output "kubectl_config" {
  value = module.eks_dev.kubectl_config
}
