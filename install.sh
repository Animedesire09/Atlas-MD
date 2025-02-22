#!/usr/bin/bash

# Update package list and install dependencies
sudo apt-get update
sudo apt-get install -y imagemagick git nodejs ffmpeg libwebp mc nano

# Install yarn if not already installed
if ! command -v yarn &> /dev/null; then
    npm install -g yarn
fi

# Clean up previous session and node_modules
rm -rf session.json
rm -rf node_modules

# Install project dependencies using yarn
yarn install

# Start the project
npm start

# Success message
echo "ATLAS MD and all of its dependencies are installed successfully!"
