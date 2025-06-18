#!/bin/bash

echo "Stopping any running containers..."
sudo docker compose down

echo "Building docker images..."
 sudo docker compose build

echo "Starting containers in detached mode..."
sudo docker compose up -d

echo "Setup complete. Containers are running."
