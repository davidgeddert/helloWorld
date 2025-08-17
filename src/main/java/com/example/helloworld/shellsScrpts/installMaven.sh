#!/bin/bash

# Script to install Apache Maven on Ubuntu

# Exit immediately if a command exits with a non-zero status.
set -e

echo "Updating package list..."
sudo apt-get update -y

# Variables
MAVEN_VERSION=3.9.4
INSTALL_DIR=/opt/maven

echo "Downloading Apache Maven $MAVEN_VERSION..."
wget https://dlcdn.apache.org/maven/maven-3/${MAVEN_VERSION}/binaries/apache-maven-${MAVEN_VERSION}-bin.tar.gz -P /tmp

echo "Extracting Maven..."
sudo mkdir -p $INSTALL_DIR
sudo tar xf /tmp/apache-maven-${MAVEN_VERSION}-bin.tar.gz -C $INSTALL_DIR
sudo rm /tmp/apache-maven-${MAVEN_VERSION}-bin.tar.gz

# Create a symbolic link for easier future upgrades
sudo ln -sfn $INSTALL_DIR/apache-maven-${MAVEN_VERSION} $INSTALL_DIR/latest

echo "Setting up environment variables..."
# Create profile.d script for Maven environment variables
sudo tee /etc/profile.d/maven.sh > /dev/null <<EOL
export M2_HOME=$INSTALL_DIR/latest
export MAVEN_HOME=$INSTALL_DIR/latest
export PATH=\$PATH:\$M2_HOME/bin
EOL

# Make the script executable
sudo chmod +x /etc/profile.d/maven.sh

echo "Loading Maven environment variables..."
source /etc/profile.d/maven.sh

echo "Verifying Maven installation..."
mvn -version

echo "Apache Maven $MAVEN_VERSION installation completed successfully."