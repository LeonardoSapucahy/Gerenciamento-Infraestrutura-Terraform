# Definição de saídas para cluster prod

output "cluster_endpoint" {
  value = module.eks_prod.cluster_endpoint
}

output "cluster_security_group_id" {
  value = module.eks_prod.cluster_security_group_id
}

output "kubectl_config" {
  value = module.eks_prod.kubectl_config
}
