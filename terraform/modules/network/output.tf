
output "vpc_id" {
  description = "ID da VPC criada"
  value       = aws_vpc.this.id
}

output "subnet_id" {
  description = "ID da Subnet pública"
  value       = aws_subnet.public.id
}

output "route_table_id" {
  description = "ID da Route Table pública"
  value       = aws_route_table.public.id
}

output "igw_id" {
  description = "ID do Internet Gateway"
  value       = aws_internet_gateway.this.id
}

output "security_group_id" {
  description = "ID do Security Group público"
  value       = aws_security_group.public.id
}
