#!/bin/bash

touch "$HOME/.gitconfig-user.inc"
touch "$HOME/.gitconfig-personal.inc"
touch "$HOME/.gitconfig-work.inc"

ln -sf "$DOTFILES/git/gitconfig" "$HOME/.gitconfig"
