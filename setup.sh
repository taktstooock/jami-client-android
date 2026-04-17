#!/bin/bash
# setup.sh - Build the Jami development Docker image

echo "🛠️  Building Jami builder Docker image..."

# Export current user IDs for the Docker build process
export HOST_UID=$(id -u)
export HOST_GID=$(id -g)

# Build the image using Compose
docker compose build

echo "✅ Image build complete."
