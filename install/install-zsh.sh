#!/bin/bash

##################
# zsh
##################
mkdir -p "$HOME/.config/zsh"
ln -sf "$HOME/.dotfiles/zsh/zshenv" "$HOME/.zshenv"
ln -sf "$HOME/.dotfiles/zsh/zshrc" "$HOME/.config/zsh/.zshrc"
ln -sf "$HOME/.dotfiles/zsh/aliases" "$HOME/.config/zsh/aliases"
rm -rf "$HOME/.config/zsh/external"
ln -sf "$HOME/.dotfiles/zsh/external" "$HOME/.config/zsh"
