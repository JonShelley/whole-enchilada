#!/bin/bash

# Note: Using WSL with Ubuntu 20.04 LTS

# Setting up Ubuntu
sudo apt update
sudo apt upgrade

# Install Ansible
sudo apt install -y ansible

# Install Packer
cd /tmp
export VER="1.6.6"
wget https://releases.hashicorp.com/packer/${VER}/packer_${VER}_linux_amd64.zip
sudo apt install -y unzip
unzip packer_${VER}_linux_amd64.zip
sudo mv packer /usr/local/bin
packer version

# Install Terraform
cd /tmp
export VER="0.14.3"
sudo wget https://releases.hashicorp.com/terraform/${VER}/terraform_${VER}_linux_amd64.zip
sudo unzip terraform_0.14.3_linux_amd64.zip
sudo mv terraform /usr/local/bin/
terraform -v

# If using WSL on Windows 10 follow 
# https://docs.microsoft.com/en-us/windows/wsl/tutorials/wsl-containers#:~:text=In%20WSL%20version%201%2C%20due%20to%20fundamental%20differences,capacity%2C%20Docker%20can%20fully%20run%20in%20WSL%202.

# If using a VM then Install Docker
sudo apt update
sudo apt install -y curl apt-transport-https ca-certificates software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add 
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
sudo apt update
sudo apt install -y docker-ce docker-ce-cli containerd.io
sudo systemctl status docker