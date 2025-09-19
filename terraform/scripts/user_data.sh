#!/bin/bash

# Atualiza os pacotes para a versão mais recente
echo "Updating with the latest packages..."
yum update -y

# Instala o Apache e o Git
echo "Installing Apache and Git..."
yum install -y httpd git

# Habilita o serviço Apache para iniciar automaticamente após o reboot
echo "Enabling Apache service to start after reboot..."
systemctl enable httpd

# Clona o repositório da aplicação e coloca os arquivos HTML no diretório correto
echo "Installing application..."
cd /tmp
git clone https://github.com/kledsonhugo/app-staticsite
cp /tmp/app-staticsite/*.html /var/www/html/

# Reinicia o serviço Apache
echo "Starting Apache service..."
systemctl start httpd

# Verifica se o Apache está em execução
echo "Checking Apache status..."
systemctl status httpd || echo "Apache failed to start."
