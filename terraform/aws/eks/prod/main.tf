# Arquivo principal de configuração para cluster prod

module "eks_prod" {
  source       = "../../modules/eks"
  region       = "us-west-2"
  cluster_name = "eks-prod"
  subnets      = ["subnet-0123456789abcdef2"]
  vpc_id       = "vpc-0123456789abcdef2"
}

module "prod_pods" {
  source          = "../../modules/pods"
  app_name        = "prod-app"
  container_image = "nginx:latest"
  container_port  = 80
  namespace       = "default"
}
