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
  echo "*** Installing python 2.7.10 ***"
  pyenv  install 2.7.10
  echo "*** Installing python 2.7.10 ***"
  pyenv  install 3.5.0
  echo "*** Setting local python environment ***"
  pyenv init -
  pyenv local 2.7.10
fi

exit 0
