#!/bin/bash

# Atualizar e instalar Docker + Docker Compose
echo "🔹 Atualizando pacotes e instalando Docker..."
sudo apt update && sudo apt install -y docker.io docker-compose

# Iniciar e habilitar Docker
echo "🔹 Iniciando e ativando o Docker..."
sudo systemctl start docker
sudo systemctl enable docker

# Verificar status do Docker
echo "🔹 Verificando status do Docker..."
sudo systemctl status docker

# Baixar o repositório Mutillidae
echo "🔹 Baixando o Mutillidae..."
git clone https://github.com/webpwnized/mutillidae-dockerhub.git
cd mutillidae-dockerhub

# Rodar o Mutillidae no Docker
echo "🔹 Iniciando o Mutillidae..."
sudo docker-compose up -d

echo "✅ Instalação concluída! Acesse o Mutillidae pelo navegador em: http://localhost:80"
