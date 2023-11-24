#!/bin/bash

mkdir -p ~/.fonts
wget --output-document firacode_nerdfont.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.0/FiraCode.zip
unzip firacode_nerdfont.zip -d ~/.fonts
fc-cache -f
rm firacode_nerdfont.zip

curl -sS https://starship.rs/install.sh | sh

mkdir -p ~/.config && cp starship.toml ~/.config/starship.toml

echo "\n\nNow change the terminal font to FiraCode Nerd Font"
