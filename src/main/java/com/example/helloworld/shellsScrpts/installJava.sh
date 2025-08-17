#!/bin/bash

# Script to install OpenJDK 17 on Ubuntu

set -e  # Exit immediately if a command exits with a non-zero status

echo "Updating package lists..."
sudo apt update

echo "Installing OpenJDK 17..."
sudo apt install -y openjdk-17-jdk

echo "Checking installed Java version..."
java -version

echo "Java 17 installation completed successfully."