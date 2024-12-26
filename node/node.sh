#!/bin/bash

sudo pacman -Syu --noconfirm
sudo pacman -S --noconfirm nodejs npm
node -v
npm -v

exit 0
