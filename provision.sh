#!/bin/bash
#
# Vagrant CentOS 7 machine provisioner - installs useful packages and Jenkins
# Luana Gouvea
# 30-Jul-2017

echo "Installing Jenkins and useful packages - please wait"

# useful
echo "==============================================="
echo "Updating the system"
echo "==============================================="
sudo yum update

echo "==============================================="
echo "Installing useful packages"
echo "==============================================="
sudo yum install wget vim bash-completion java -y

# Installing Jenkins
echo "==============================================="
echo "Installing Jenkins and setting it up"
echo "==============================================="
sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat/jenkins.repo
sudo rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key
sudo yum install jenkins -y
sudo systemctl start jenkins.service
sudo systemctl enable jenkins.service
