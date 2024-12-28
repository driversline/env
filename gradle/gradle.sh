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

gradle wrapper

directories=(
    "$projectName/src/main/java/com"
    "$projectName/src/main/resources"
)

files=(
    "$projectName/build.gradle"
    "$projectName/settings.gradle"
)

for dir in "${directories[@]}"; do
    mkdir -p "$dir"
done

for file in "${files[@]}"; do
    touch "$file"
done

echo "Excellent."

exit 0
