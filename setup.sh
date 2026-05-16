#!/bin/bash

echo "Updating packages..."
sudo apt update -y

echo "Installing nginx..."
sudo apt install nginx -y

echo "Installing git..."
sudo apt install git -y

echo "Creating deploy user..."
sudo adduser --disabled-password --gecos "" deploy

echo "Adding deploy user to sudo group..."
sudo usermod -aG sudo deploy

echo "Docker already installed."

echo "Setup completed successfully!"
