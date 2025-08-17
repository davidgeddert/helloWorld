#!/bin/bash

# Script to install Apache Maven on Ubuntu

# Exit immediately if a command exits with a non-zero status
set -e

echo "Updating package list..."
sudo apt update

echo "Installing Maven..."
sudo apt install -y maven

echo "Verifying Maven installation..."
mvn -version

echo "Maven installation is complete!"