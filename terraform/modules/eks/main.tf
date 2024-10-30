# Módulo reutilizável para criação de clusters EKS

provider "aws" {
  region = var.region
}

module "eks_cluster" {
  source          = "terraform-aws-modules/eks/aws"
  cluster_name    = var.cluster_name
  cluster_version = "1.21"
  subnets         = var.subnets
  vpc_id          = var.vpc_id

  node_groups = {
    eks_nodes = {
      desired_capacity = 3
      max_capacity     = 3
      min_capacity     = 1

      instance_type = "t3.medium"
    }
  }
}

output "cluster_endpoint" {
  value = module.eks_cluster.cluster_endpoint
}

output "cluster_security_group_id" {
  value = module.eks_cluster.cluster_security_group_id
}

output "kubectl_config" {
  value = module.eks_cluster.kubeconfig
}
