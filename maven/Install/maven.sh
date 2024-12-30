#!/bin/bash

if ! command -v mvn &> /dev/null; then
    echo "Installing Maven..."
    sudo pacman -S --noconfirm maven
else
    echo "Maven is already installed."
fi

read -p "Enter the project name (e.g., my-project): " projectName

mkdir -p "$projectName"
cd "$projectName" || exit

directories=(
    "$projectName/src/main/java/com"
    "$projectName/src/main/resources"
)

files=(
    "$projectName/pom.xml"
)

for dir in "${directories[@]}"; do
    mkdir -p "$dir"
done

for file in "${files[@]}"; do
    touch "$file"
done

echo "Excellent."

exit 0
