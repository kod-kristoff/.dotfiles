#!/bin/bash

##################
# nvim
##################
mkdir --parent "$VIMCONFIG"
mkdir --parent "$VIMCONFIG/undo"
# ln -sf "$DOTFILES/nvim/init.vim" "$VIMCONFIG"
# ln -sf "$DOTFILES/nvim/init_plugins.vim" "$VIMCONFIG"
ln -sf "$DOTFILES/nvim/init.lua" "$VIMCONFIG"
rm -rf "$VIMCONFIG/lua"
ln -sf "$DOTFILES/nvim/lua" "$VIMCONFIG/lua"

# install neovim plugin manager 
# [ ! -f "$DOTFILES/nvim/autoload/plug.vim" ] \
#     && curl -fLo "$DOTFILES/nvim/autoload/plug.vim" --create-dirs \
#     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
#
# mkdir -p "$VIMCONFIG/autoload" 
# ln -sf "$DOTFILES/nvim/autoload/plug.vim" "$VIMCONFIG/autoload/plug.vim"
# # Install (or update) all the plugins
# nvim --noplugin +PlugUpdate +qa

