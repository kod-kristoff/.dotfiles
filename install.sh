#!/bin/bash

############
# includes #
############

# source ./install_config
source ./colours.sh
source ./install_functions.sh
source ./zsh/zshenv

################
# presentation #
################

echo -e "
${yellow}
          _ ._  _ , _ ._
        (_ ' ( \`  )_  .__)
      ( (  (    )   \`)  ) _)
     (__ (_   (_ . _) _) ,__)
           ~~\ ' . /~~
         ,::: ;   ; :::,
        ':::::::::::::::'
 ____________/_ __ \_________________
|                                    |
| Welcome to kod-kristoff's dotfiles |
|____________________________________|
"

echo -e "${yellow}!!! ${red}WARNING${yellow} !!!"
echo -e "${light_red}This script will delete all your configuration files!"
echo -e "${light_red}Use it at your own risks."

if [ $# -ne 1 ] || [ "$1" != "-y" ];
    then
        echo -e "${yellow}Press a key to continue...\n"
        read key;
fi

###########
# INSTALL #
###########

source "$DOTFILES/install/install-zsh.sh"

dot_install git

dot_is_installed gitui && dot_install gitui
dot_is_installed nvim && dot_install nvim
dot_is_installed sway && dot_install sway
dot_is_installed zeditor && dot_install zed
