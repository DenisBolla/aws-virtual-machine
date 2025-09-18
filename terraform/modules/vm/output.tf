# ID da instância
output "instance_id" {
  description = "ID da instância criada"
  value       = aws_instance.this.id
}

# Endereço IP público da instância
output "public_ip" {
  description = "Endereço IP público da instância"
  value       = aws_instance.this.public_ip
}
