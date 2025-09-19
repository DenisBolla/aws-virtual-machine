# Configuração do Provider AWS
provider "aws" {
  region = "us-east-1" # Substitua pela sua região
}


terraform {
  required_version = ">= 1.13.1"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.11.0"
    }
  }

  backend "s3" {
    bucket       = "tfstate-denisbolla2" # Nome do bucket S3
    key          = "tfstate"             # Caminho para o estado no S3
    region       = "us-east-1"           # Região onde o S3 está localizado
    use_lockfile = true                  # Para garantir que o estado seja bloqueado ao aplicar
  }
}
