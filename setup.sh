#!/bin/bash

set -e

echo "Starting Docker Compose services..."

sudo docker compose up -d

echo "Setup complete!"
