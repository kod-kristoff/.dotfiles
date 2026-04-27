#!/bin/bash

mkdir -p "$XDG_CONFIG_HOME/pnpm"

ln -sf "$DOTFILES/pnpm/rc" "$XDG_CONFIG_HOME/pnpm/"
