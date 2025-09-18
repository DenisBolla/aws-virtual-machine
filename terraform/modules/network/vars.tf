# CIDR da VPC
variable "vpc_cidr" {
  description = "CIDR block da VPC"
  type        = string
  default     = "10.0.0.0/16"
}

# CIDR da Subnet pública
variable "public_subnet_cidr" {
  description = "CIDR block da Subnet pública"
  type        = string
  default     = "10.0.1.0/24"
}

# Nome do Security Group
variable "sg_name" {
  description = "Nome do Security Group público"
  type        = string
  default     = "sg_public"
}
