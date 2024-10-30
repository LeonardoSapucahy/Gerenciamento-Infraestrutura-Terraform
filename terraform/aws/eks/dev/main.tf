# Arquivo principal de configuração para cluster dev

module "eks_dev" {
  source       = "../../modules/eks"
  region       = "us-east-1"
  cluster_name = "eks-dev"
  subnets      = ["subnet-1234567899876"]
  vpc_id       = "vpc-0123456789abcdef0"
}

module "dev_pods" {
  source          = "../../modules/pods"
  app_name        = "dev-app"
  container_image = "nginx:latest"
  container_port  = 80
  namespace       = "default"
}
