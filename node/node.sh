#!/bin/bash

sudo pacman -Syu --noconfirm

if ! command -v node &> /dev/null; then
    echo "installing node and npm..."
    sudo pacman -S --noconfirm nodejs npm
else
    echo "node and npm are already installed."
fi

node -v
npm -v

exit 0
