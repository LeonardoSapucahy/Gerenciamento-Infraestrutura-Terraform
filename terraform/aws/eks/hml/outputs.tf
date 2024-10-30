# Definição de saídas para cluster hml

output "cluster_endpoint" {
  value = module.eks_hml.cluster_endpoint
}

output "cluster_security_group_id" {
  value = module.eks_hml.cluster_security_group_id
}

output "kubectl_config" {
  value = module.eks_hml.kubectl_config
}
