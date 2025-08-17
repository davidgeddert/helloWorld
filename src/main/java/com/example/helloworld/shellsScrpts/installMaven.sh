#!/bin/bash

# Update package list
echo "Updating package list..."
sudo apt update

ls -R

# Install Maven
echo "Installing Maven..."
sudo apt install -y maven

# Verify installation
echo "Maven version installed:"
mvn -version