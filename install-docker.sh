#!/bin/bash

set -e

echo "Updating packages..."
sudo apt-get update

echo "Installing Docker and Docker Compose plugin..."
sudo apt-get install -y docker.io docker-compose-plugin

echo "Starting and enabling Docker..."
sudo systemctl start docker
sudo systemctl enable docker

echo "Docker installation complete!"
