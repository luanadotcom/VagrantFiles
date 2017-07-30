#!/bin/bash

echo "Installing Jenkins and useful packages - please wait"

# useful
sudo yum update >/dev/null 2>&1
sudo yum install wget vim bash-completion -y

# Installing Jenkins
sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat/jenkins.repo
sudo rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key
sudo yum install jenkins
sed -i 's/8080/9000/g' /etc/sysconfig/jenkins
sudo systemctl start jenkins.service
sudo systemctl enable jenkins.service
