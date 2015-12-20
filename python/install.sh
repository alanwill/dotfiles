#!/bin/sh
#
# Python installation
#
# This checks for the presence of homebrew install python and if not present, installs it
# as well as virtualenv and pyenv

# Check for python
if /usr/local/bin/python ! $(which python)
then
  echo "*** Installing python ***"
  brew install python
  brew install python3

  /usr/local/bin/pip install virtualenv
  /usr/local/bin/pip install virtualenvwrapper
  export WORKON_HOME=$HOME/.virtualenvs
  export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python
  export VIRTUALENVWRAPPER_VIRTUALENV=/usr/local/bin/virtualenv
  source /usr/local/bin/virtualenvwrapper.sh

  brew install pyenv
  brew install pyenv-virtualenv

  export PIP_REQUIRE_VIRTUALENV=true

  mkvirtualenv main
  workon main
  pip install aws-shell awscli blink1 powerline-status Django
fi

exit 0
