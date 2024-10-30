# Gerenciamento de infraestrutura com terraform

### Uso de Terraform para provisionamento de infraestrutura como código em ambientes de nuvem. Exemplos de arquivos de configuração e módulos reutilizáveis para AWS, GCP e Azure.

# Estrutura

### Nessa estrutura são criados 3 clusters EKS (dev, hml e prod), cada um com 3 pods e seus respectivos deployments, simulando um ambiente real do dia a dia de algumas empresas.

### Foram utilizados módulos para melhor reutilização e fácil manutenção de código, no folder modules ficam as configurações da estrutura, e no folder aws ficam as configurações para cada ambiente.
