#!/bin/bash

if ! command -v node &> /dev/null; then
    echo "Installing node and npm..."
    sudo pacman -S --noconfirm nodejs npm
else
    echo "Node and npm are already installed."
fi

read -p "Enter the project name (e.g., my-project): " projectName

mkdir -p "$projectName"
cd "$projectName" || exit

echo "Excellent."

exit 0
