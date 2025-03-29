# CÓDIGO 01
sudo apt update && sudo apt install -y ca-certificates curl gnupg
sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo tee /etc/apt/keyrings/docker.asc > /dev/null
sudo chmod a+r /etc/apt/keyrings/docker.asc
echo  " deb [assinado por=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/debian bookworm estável "  | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt atualização
# ----------------------------------------------------------

# CÓDIGO 02
sudo apt install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
# ----------------------------------------------------------

# BAIXAR REPOSITÓRIO
clone git https://github.com/webpwnized/mutillidae-dockerhub.git
# ----------------------------------------------------------

# RODAR PROJETO
docker compose up -d
