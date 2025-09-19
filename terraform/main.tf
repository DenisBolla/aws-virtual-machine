# Definição do módulo de rede
module "network" {
  source = "./network"
}

# Definição do módulo de VM
module "vm" {
  source             = "./vm"
  subnet_id          = module.network.subnet_id         # Referência ao subnet_id do módulo network
  security_group_id  = module.network.security_group_id # Referência ao security_group_id do módulo network
  ami                = "ami-0c101f26f147fa7fd"         # Substitua pela sua AMI
  instance_type      = "t2.micro"                       # Substitua pelo tipo de instância desejado
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
