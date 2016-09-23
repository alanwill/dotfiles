#!/bin/sh
#
# Python installation
#
# This checks for the presence of homebrew install python and if not present, installs it
# as well as virtualenv and pyenv

# Check for python
echo "*** Installing python ***"
brew install python
brew install python3

echo "*** Installing virtualenv ***"
/usr/local/bin/pip install virtualenv
/usr/local/bin/pip install virtualenvwrapper
echo "*** Configuring virtualenv env ***"
if [ ! -d "$HOME/.virtualenvs" ]; then
    mkdir -p $HOME/.virtualenvs
fi
export WORKON_HOME=$HOME/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python
export VIRTUALENVWRAPPER_VIRTUALENV=/usr/local/bin/virtualenv
source /usr/local/bin/virtualenvwrapper.sh

echo "*** Installing pyenv ***"
brew install pyenv
brew install pyenv-virtualenv

export PIP_REQUIRE_VIRTUALENV=true

echo "*** Setting up 'main' virtualenv ***"
mkvirtualenv main
workon main

exit 0
