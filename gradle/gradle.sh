#!/bin/bash

if ! command -v gradle &> /dev/null; then
    echo "Installing Gradle..."
    sudo pacman -S --noconfirm gradle
else
    echo "Gradle is already installed."
fi

read -p "Enter the project name (e.g., my-project): " projectName

mkdir -p "$projectName"
cd "$projectName" || exit

gradle init --type basic

mkdir -p "$projectName/src/main/java/com"
mkdir -p "$projectName/src/main/resources"

echo "Excellent."

exit 0
