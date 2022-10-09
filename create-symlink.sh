#!/bin/sh

# Variables
path_destiny=$HOME/.config/nvim

# Create backup nvim config

if [ -e $path_destiny ]; then
	mv $path_destiny $path_destiny-bak
fi

# Create symbolic link
ln -s "$(pwd)" $path_destiny
