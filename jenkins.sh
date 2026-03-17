#!/bin/bash
set -e

# Update system
sudo yum update -y
sudo yum upgrade -y

# Install Java
sudo yum install java-17-amazon-corretto -y
java -version

# Add Jenkins key
sudo wget -O /etc/yum.repos.d/jenkins.repo     https://pkg.jenkins.io/rpm-stable/jenkins.repo

# Add Jenkins repository
rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key

# Update package list
sudo yum update -y

# Install Jenkins
sudo yum install -y jenkins

# Start Jenkins
sudo systemctl start jenkins
systemctl status jenkins
systemctl enable jenkins

# Check status
sudo systemctl status jenkins
