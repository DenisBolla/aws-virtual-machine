# USER DATA (script para inicialização)
data "template_file" "user_data" {
  template = file("${path.root}/scripts/user_data.sh")  # Caminho corrigido para a raiz do projeto
}

# EC2 INSTANCE
resource "aws_instance" "this" {
  ami                    = var.ami
  instance_type          = var.instance_type
  subnet_id              = var.subnet_id
  vpc_security_group_ids = [var.security_group_id]
  user_data_base64       = base64encode(data.template_file.user_data.rendered)
}
