#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath="razaqofficial/mlmicroservice"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run ml-microservice-api --image=$dockerpath

# Step 3:
# List kubernetes pods
kubectl wait --for=condition=ready pod ml-microservice-api
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward ml-microservice-api 8080:80
