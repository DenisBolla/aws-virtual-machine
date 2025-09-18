# ID da VPC
output "vpc_id" {
  description = "ID da VPC criada"
  value       = aws_vpc.this.id
}

# ID da Subnet pública
output "subnet_id" {
  description = "ID da Subnet pública"
  value       = aws_subnet.public.id
}

# ID da Route Table pública
output "route_table_id" {
  description = "ID da Route Table pública"
  value       = aws_route_table.public.id
}

# ID do Internet Gateway
output "igw_id" {
  description = "ID do Internet Gateway"
  value       = aws_internet_gateway.this.id
}

# ID do Security Group público
output "security_group_id" {
  description = "ID do Security Group público"
  value       = aws_security_group.public.id
}
