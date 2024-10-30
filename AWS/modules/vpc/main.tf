# Exemplo de módulo reutilizável

resource "aws_vpc" "vpc" {
  cidr_block = var.vpc_cidr
}

resource "aws_subnet" "subnet" {
  count      = var.subnet_count
  vpc_id     = aws_vpc.vpc.id
  cidr_block = element(var.subnet_cidrs, count.index)
}
