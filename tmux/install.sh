#!/bin/sh
#
# TPM (TMUX Plugin Manager) install
#
if [ ! -d "~/.tmux/plugins/tpm" ]; then
  echo " Cloning TPM tmux plugin"
  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fi

exit 0
