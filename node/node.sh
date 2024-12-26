#!/bin/bash

if ! command -v node &> /dev/null; then
    echo "Installing node and npm..."
    sudo pacman -S --noconfirm nodejs npm
else
    echo "Node and npm are already installed."
fi

node -v
npm -v

echo "Excellent."

exit 0
