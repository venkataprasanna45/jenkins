#!/bin/bash
sudo yum -y install git
sudo yum -y install docker
sudo curl -L https://github.com/docker/compose/releases/download/1.22.0/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
git clone https://github.com/AmarnathBheema/jenkins.git
cd jenkins
sudo cp docker-compose.yml /home/ec2-user
cd
sudo systemctl start docker
sudo systemctl enable docker
sudo docker-compose up -d
