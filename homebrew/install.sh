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
asciinema \
blink1 \
caskroom/cask/brew-cask \
coreutils \
cowsay \
curl \
emacs \
figlet \
git \
git-extras \
go \
grc \
hub \
jq \
keybase \
lynx \
node \
openssl \
osquery \
pam_yubico \
reattach-to-user-namespace \
ruby \
speedtest-cli \
sqlite \
sysdig \
tmux \
tmux-mem-cpu-load \
tree \
vim \
wget \
zsh \
spark
brew install lastpass-cli --with-pinentry --with-doc

# Install brew cask packages
brew cask install \
consul \
dockertoolbox \
gitup \
nomad \
otto \
packer \
serf \
terraform \
vagrant \
vault

exit 0
