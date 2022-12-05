sudo yum -y update
sudo yum -y install git
sudo yum -y install docker
sudo systemctl start docker
sudo usermod -a -G docker ec2-user
sudo systemctl enable docker
sudo curl -L https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
docker-compose version
sudo git clone https://github.com/Digvijay1133/wordpress-hosting.yaml.git
cd wordpress-hosting.yaml
sudo chmod +x docker-compose.yaml
sudo docker-compose up -d
