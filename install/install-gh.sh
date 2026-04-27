#!/bin/bash

mkdir -p "$XDG_CONFIG_HOME/gh"

ln -s "$DOTFILES/gh/config.yml" "$XDG_CONFIG_HOME/gh/"
