#!/bin/bash

# Note: Using WSL with Ubuntu 20.04 LTS

# Setting up Ubuntu
sudo apt update
sudo apt upgrade

# Install Ansible
sudo apt install ansible

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