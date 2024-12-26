#!/bin/bash

if ! command -v node &> /dev/null; then
    echo "Installing node and npm..."
    sudo pacman -S --noconfirm nodejs npm
else
    echo "Node and npm are already installed."
fi

read -p "Enter the path for the project folder (e.g., /home/user/my-project): " projectPath

mkdir -p "$projectPath"
cd "$projectPath" || exit

node -v
npm -v

echo "Excellent."

exit 0
