#!/bin/bash
# shell.sh - Start an interactive bash session inside the builder container

echo "🚀 Starting Jami builder shell..."

# Ensure IDs are exported for the session
export HOST_UID=$(id -u)
export HOST_GID=$(id -g)

# Run the container and drop into a bash shell
# The --rm flag ensures the container is removed after you exit
docker compose run --rm jami-builder /bin/bash

