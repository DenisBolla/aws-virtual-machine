# Definição do módulo de rede
module "network" {
  source = "./modules/network" # Atualizado para o caminho correto
}

# Definição do módulo de VM
module "vm" {
  source            = "./modules/vm" # Atualizado para o caminho correto
  subnet_id         = module.network.subnet_id
  security_group_id = module.network.security_group_id
  ami               = "ami-0c101f26f147fa7fd"
  instance_type     = "t2.micro"
}

# Outputs principais para exibir informações após a execução
output "vpc_id" {
  description = "ID da VPC criada"
  value       = module.network.vpc_id
}

output "subnet_id" {
  description = "ID da Subnet pública"
  value       = module.network.subnet_id
}

output "security_group_id" {
  description = "ID do Security Group público"
  value       = module.network.security_group_id
}

output "instance_id" {
  description = "ID da instância EC2 criada"
  value       = module.vm.instance_id
}

output "public_ip" {
  description = "Endereço IP público da instância EC2"
  value       = module.vm.public_ip
}
