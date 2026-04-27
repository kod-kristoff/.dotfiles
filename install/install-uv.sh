#!/bin/bash

mkdir -p "$XDG_CONFIG_HOME/uv"

ln -sf "$DOTFILES/uv/uv.toml" "$XDG_CONFIG_HOME/uv/"
