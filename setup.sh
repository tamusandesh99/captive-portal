#!/bin/bash

echo "Stopping any running containers..."
docker compose down

echo "Building docker images..."
docker compose build

echo "Starting containers in detached mode..."
docker compose up -d

echo "Setup complete. Containers are running."
