#!/bin/sh
#
# Zsh (specifically oh-my-zsh)
#
# This checks for the presence of oh-my-zsh and if not present, installs it

# Check for oh-my-zsh
if [ ! -d "$HOME"/.oh-my-zsh ];
then
  echo "*** Installing oh-my-zsh for you ***"
  sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

exit 0
