# Subnet onde a VM será criada
variable "subnet_id" {
  description = "ID da Subnet onde a instância será criada"
  type        = string
}

# Security Group da VM
variable "security_group_id" {
  description = "ID do Security Group da instância"
  type        = string
}

# AMI da instância
variable "ami" {
  description = "AMI que será usada para criar a instância"
  type        = string
  default     = "ami-0c101f26f147fa7fd"
}

# Tipo da instância
variable "instance_type" {
  description = "Tipo da instância"
  type        = string
  default     = "t2.micro"
}
