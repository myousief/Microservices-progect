#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath

dockerpath=/localproj

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
cat ./my_password.txt | docker login --username myousief --password-stdin

# Step 3:
# Push image to a docker repository
docker push localproj
