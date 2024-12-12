#!/bin/bash

##################
# nvim
##################
mkdir --parent "$HOME/.config/nvim"
mkdir --parent "$HOME/.config/nvim/undo"
ln -sf "$HOME/.dotfiles/nvim/init.vim" "$HOME/.config/nvim"

