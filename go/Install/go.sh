#!/bin/bash

install_go() {
    if ! command -v go &> /dev/null; then
        echo "Installing Go..."
        sudo pacman -S --noconfirm go
    else
        echo "Go is already installed."
    fi
}

install_js_beautify() {
    if ! command -v js-beautify &> /dev/null; then
        echo "Installing js-beautify..."
        yay -S --noconfirm js-beautify
    else
        echo "js-beautify is already installed."
    fi
}

if ! command -v yay &> /dev/null; then
    echo "install yay first."
    exit 1
fi

echo "Excellent."

exit 0
