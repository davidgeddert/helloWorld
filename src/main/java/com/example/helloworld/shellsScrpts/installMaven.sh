#!/bin/bash

# Update package list
echo "Updating package list..."
sudo apt update && sudo apt upgrade
ls -R

# Install Maven
echo "Installing Maven..."
# sudo apt install -y maven

wget https://dlcdn.apache.org/maven/maven-3/3.8.4/binaries/apache-maven-3.8.4-bin.tar.gz
tar -C /usr/local -xzf apache-maven-3.8.4-bin.tar.gz
export M2_HOME=/usr/local/apache-maven-3.8.4
export PATH=$M2_HOME/bin:$PATH

# Verify installation
echo "Maven version installed:"
mvn -version




