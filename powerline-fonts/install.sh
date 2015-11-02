#!/bin/sh
#
# Initialize and install fonts
#
#

cd $HOME/.dotfiles/powerline-fonts/fonts
git submodule init
git submodule update
./install.sh

exit 0
