# Saídas do módulo EKS

output "cluster_endpoint" {
  value = module.eks_cluster.cluster_endpoint
}

output "cluster_security_group_id" {
  value = module.eks_cluster.cluster_security_group_id
}

output "kubectl_config" {
  value = module.eks_cluster.kubeconfig
}
