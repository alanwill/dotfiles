#!/bin/sh
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

# Check for Homebrew
if test ! $(which brew)
then
  echo "  Installing Homebrew for you."

  # Install the correct homebrew for each OS type
  if test "$(uname)" = "Darwin"
  then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  elif test "$(expr substr $(uname -s) 1 5)" = "Linux"
  then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/linuxbrew/go/install)"
  fi

fi

# Install homebrew packages
brew install \
blink1 \
brew-cask \
coreutils \
cowsay \
curl \
docker \
docker-compose \
docker-machine \
docker-swarm \
emacs \
git \
git-extras \
go \
grc \
hub \
jq \
lastpass-cli \
lynx \
node \
openssl \
osquery \
packer \
pam_yubico \
pyenv \
reattach-to-user-namespace \
ruby \
speedtest-cli \
sqlite \
sysdig \
terraform \
tmux \
tmux-mem-cpu-load \
tree \
vim \
wget \
zsh \
zsh-syntax-highlighting \
spark


exit 0
