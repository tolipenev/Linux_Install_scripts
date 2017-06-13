#!/bin/bash 
sudo pacman -Syy
sh bin.sh
cd tlp
sh tlp.sh
cd ../themes
sh themes.sh
cd ../config
sh config.sh
cd ../gestures
sh gestures.sh
cd ../installations
sh installations.sh
