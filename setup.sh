#!/bin/bash

echo "Updating package list..."
sudo apt update

echo "Installing Git, curl, and tree..."
sudo apt install -y git curl tree

echo "Setup complete."
