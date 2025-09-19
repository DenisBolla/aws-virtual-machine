output "ec2_public_url" {
  value       = "http://${module.vm.public_dns}" # Alterado para usar o output do módulo vm
  description = "URL pública da instância EC2"
}
