# Arquivo de variáveis do módulo

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "subnet_count" {
  description = "Number of subnets to create"
  type        = number
}

variable "subnet_cidrs" {
  description = "List of subnet CIDRs"
  type        = list(string)
}
