#!/bin/bash

echo "Starting tests..."

# Check Docker version
docker_version=$(docker --version)
echo "Docker version: $docker_version"

# Check Docker info
docker_info=$(docker info)
echo "Docker info:"
echo "$docker_info"

# List Docker containers
echo "Docker containers:"
docker ps -a

# Print system information
echo "System information:"
uname -a

# List files in the current directory
echo "Files in current directory:"
ls -l

# Simulate a test assertion (replace with actual tests)
echo "Running sample test assertion..."
# Example: check if a specific file exists

echo "All tests completed successfully."

# Exit with success status
exit 0
