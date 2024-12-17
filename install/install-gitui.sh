#!/bin/bash

mkdir -p "$XDG_CONFIG_HOME/gitui"

ln -s "$DOTFILES/gitui/key_bindings.ron" "$XDG_CONFIG_HOME/gitui/"
