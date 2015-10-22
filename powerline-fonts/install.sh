#!/bin/sh
#
# Initialize and install fonts
#
#

cd ./fonts
git submodule init
git submodule update
./install.sh

exit 0
