#!/bin/bash

##################
# nvim
##################
mkdir --parent "$HOME/.config/nvim"
mkdir --parent "$HOME/.config/nvim/undo"
ln -sf "$HOME/.dotfiles/nvim/init.vim" "$HOME/.config/nvim"

##################
# zsh
##################
mkdir -p "$HOME/.config/zsh"
ln -sf "$HOME/.dotfiles/zsh/zshenv" "$HOME/.zshenv"
ln -sf "$HOME/.dotfiles/zsh/zshrc" "$HOME/.config/zsh/.zshrc"
ln -sf "$HOME/.dotfiles/zsh/aliases" "$HOME/.config/zsh/aliases"
