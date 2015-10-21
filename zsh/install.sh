#!/bin/sh
#
# Zsh (specifically oh-my-zsh)
#
# This checks for the presence of oh-my-zsh and if not present, installs it

# Check for oh-my-zsh
if [ ! -d "$HOME"/.oh-my-zsh ];
then
  echo "  Installing oh-my-zsh for you."
  sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
  echo "  Creating custom directory for ZSH themes and plugins."
  mkdir -p $HOME/.zshrc-custom/themes $HOME/.zshrc-custom/plugins
  echo "  Installing bullet-train ZSH theme"
  cd $HOME/.zshrc-custom/themes
  curl -O http://raw.github.com/caiogondim/bullet-train-oh-my-zsh-theme/master/bullet-train.zsh-theme
fi

exit 0
