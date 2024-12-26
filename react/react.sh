#!/bin/bash

if ! command -v node &> /dev/null; then
    echo "Installing node and npm..."
    sudo pacman -S --noconfirm nodejs npm
else
    echo "Node and npm are already installed."
fi

read -p "Enter the path (e.g., /home/user/my-react-app): " projectPath

mkdir -p "$projectPath"
cd "$projectPath" || exit

npm init -y

npm install react react-dom react-router-dom

mkdir -p src public

echo "Excellent."

exit 0
