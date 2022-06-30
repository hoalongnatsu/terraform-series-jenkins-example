#!/bin/bash 

wget -N -c https://raw.githubusercontent.com/warrensbox/terraform-switcher/release/install.sh

# Make installer executable
chmod 755 install.sh

# Install tfswitch in a location you have permission
./install.sh -b $(pwd)/.bin

# set custom bin path
CUSTOMBIN=$(pwd)/.bin

#Add custom bin path to PATH environment
export PATH=$CUSTOMBIN:$PATH

$CUSTOMBIN/tfswitch -b $CUSTOMBIN/terraform