# Variáveis do módulo EKS

variable "region" {
  description = "AWS region"
  type        = string
}

variable "cluster_name" {
  description = "EKS Cluster name"
  type        = string
}

variable "subnets" {
  description = "Subnets for the EKS cluster"
  type        = list(string)
}

variable "vpc_id" {
  description = "VPC ID for the EKS cluster"
  type        = string
}
