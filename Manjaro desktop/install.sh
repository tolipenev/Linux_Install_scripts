#!/bin/bash 
set -ex
DIREC=$(pwd)
sudo pacman -Syy
sh ./installations/beginInstall.sh
sh bin.sh
cd ../Antergos/themes
sh themes.sh
cd "$DIREC"
cd ./installations
sh installations.sh
