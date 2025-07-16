#!/bin/bash

# This script creates symlinks to the .dotfiles below

# Remove mouse scaling for Mac
# defaults write .GlobalPreferences com.apple.mouse.scaling -1

# oh-my-zsh config
ln -s ./.dotfiles/.zshrc .zshrc