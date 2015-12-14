#!/bin/sh
#
# Python installation
#
# This checks for the presence of pyenv and if not present, installs it
# also installs both python 2 and 3 (superceeding the default python binaries in OS X)

# Check for pyenv
if test ! $(which pyenv)
then
  echo "*** Installing pyenv ***"
  brew install pyenv
  echo "*** Installing python 2.7.11 ***"
  pyenv install 2.7.11
  echo "*** Installing python 3.5.0 ***"
  pyenv install 3.5.0
  echo "*** Setting local python environment ***"
  eval "$(pyenv init -)"
  pyenv local 2.7.11
  echo "*** Installing AWS CLI ***"
  pip install --upgrade pip
  pip install awscli
  pip install virtualenv
else
  echo "*** Setting local python environment ***"
  eval "$(pyenv init -)"
  pyenv local 2.7.11
  echo "*** Updating AWS CLI ***"
  pip install --upgrade pip
  pip install --upgrade awscli
fi

exit 0
