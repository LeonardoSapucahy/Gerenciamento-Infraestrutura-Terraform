# Arquivo principal de configuração para cluster hml

module "eks_hml" {
  source       = "../../modules/eks"
  region       = "us-west-2"
  cluster_name = "eks-hml"
  subnets      = ["subnet-0123456789abcdef1"]
  vpc_id       = "vpc-0123456789abcdef1"
}

module "hml_pods" {
  source          = "../../modules/pods"
  app_name        = "hml-app"
  container_image = "nginx:latest"
  container_port  = 80
  namespace       = "default"
}
